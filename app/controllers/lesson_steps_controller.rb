class LessonStepsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    lesson = policy_scope(Lesson).find(params[:lesson_id])
    @lesson_steps = lesson.lesson_steps
    respond_to do |format|
      format.json { render json: @lesson_steps }
    end
  end

  # def pop_up
  # end
end
