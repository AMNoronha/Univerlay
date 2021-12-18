class LessonsController < ApplicationController
  # def index
  #   @lessons = policy_scope(Lesson)
  # end

  def show
    @lesson = Lesson.find(params[:id])
  end
end
