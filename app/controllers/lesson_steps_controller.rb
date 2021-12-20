class LessonStepsController < ApplicationController
  def index
    lesson = Lesson.find(1)
    @lesson_steps = lesson.lesson_steps
    respond_to do |format|
      format.json { render json: @lesson_steps }
    end
  end

  def pop_up
  end
end
