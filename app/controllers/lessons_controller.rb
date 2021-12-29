class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lesson = Lesson.all
  end

  def show
    authorize @lesson
    @lesson_progress = LessonProgress.new
  end

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
