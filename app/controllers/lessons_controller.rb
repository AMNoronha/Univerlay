class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end
end
