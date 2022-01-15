class LessonProgressesController < ApplicationController
  before_action :set_lesson_progress, only: %i[show edit update]
  # skip_before_action :authenticate_user!, only: [:index]

  def index
    @lesson_progresses = policy_scope(LessonProgress)
    @lesson = policy_scope(Lesson).find(params[:lesson_id])
    @lesson_steps = @lesson.lesson_steps
    @progress = @lesson_progresses.find_by(lesson_id: params[:lesson_id], user_id: current_user.id)

    respond_to do |format|
      format.html
      format.json { render json: @lesson_progresses }
    end
  end

  # def show
  #   @lessons = Lesson.all
  #   @lesson = @lessons.find_by(lesson_id: @lesson_progress.id)
  # end

  # def new
  #   @lesson_progress = LessonProgress.new
  #   authorize @lesson_progress
  # end

  def create
    @lesson_progress = LessonProgress.new(lesson_progress_params)
    @lesson = Lesson.find(params[:lesson_id])
    @lesson_progress.user = current_user
    @lesson_progress.lesson = @lesson
    authorize @lesson_progress

    if @lesson_progress.save
      redirect_to lesson_lesson_progresses_path(@lesson)
    # else
    #   render 'pages/home'
    end
  end

  def edit
  end

  def update
    @lesson_progresses = policy_scope(LessonProgress)
    @progress = @lesson_progresses.find_by(lesson_id: params[:lesson_id], user_id: current_user.id)

    @progress.current_step = params[:lesson_progress][:current_step].to_i

    @lesson = Lesson.find(params[:lesson_id])
    if @progress.update(lesson_progress_params)
      redirect_to lesson_lesson_progresses_path(@lesson)
    # else
    #   render :edit
    end
  end

  private

  def set_lesson_progress
    @lesson_progress = LessonProgress.find(params[:id])
    authorize @lesson_progress
  end

  def lesson_progress_params
    params.require(:lesson_progress).permit(:current_step)
  end
end
