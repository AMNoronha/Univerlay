class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      @lessons = Lesson.search_by_title(params[:query])
    else
      @lessons = Lesson.all
    end

    @lesson_progresses = LessonProgress.all.map(&:lesson_id)

    @lessons_filtered = @lessons.reject do |lesson|
      @lesson_progresses.include?(lesson.id)
    end
  end
end
