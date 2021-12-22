class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      @lessons = Lesson.search_by_title(params[:query])
    else
      @lessons = Lesson.all
    end
  end
end
