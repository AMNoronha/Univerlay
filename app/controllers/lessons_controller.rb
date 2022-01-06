class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    # @lessons = policy_scope(Lesson)
    @lesson_progresses = policy_scope(LessonProgress)
    # @user_lesson_progresses = @lesson_progresses.select do |lesson_progress|
    #   lesson_progress.user_id == current_user.id
    # end
    @user_lessons = @lesson_progresses.map do |lesson_progress|
      Lesson.find(lesson_progress.lesson_id)
    end
  end

  # def show
  #   authorize @lesson
  #   @lesson_progress = LessonProgress.new
  # end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title)
  end
end
