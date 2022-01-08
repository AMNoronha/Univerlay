class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user_lesson_progresses = policy_scope(LessonProgress)
    @lesson_progress = LessonProgress.new

    if params[:query].present?
      @lessons = Lesson.search_by_title(params[:query])
    else
      @lessons = Lesson.all
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'pages/lessons_list.html', locals: { lessons: @lessons } }
    end
  end
end
