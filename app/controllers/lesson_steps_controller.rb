class LessonStepsController < ApplicationController
  def index
    @lesson_steps = LessonStep.all
  end

  def pop_up
  end
end
