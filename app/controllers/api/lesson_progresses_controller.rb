class Api::LessonProgressesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @lesson_progresses = policy_scope(LessonProgress, policy_scope_class: Api::LessonProgressPolicy::Scope)
    # @lesson_progresses = policy_scope(LessonProgress)
    respond_to do |format|
      format.html
      format.json { render json: @lesson_progresses }
    end
    # authorize @lesson_progresses, policy_class: Api::LessonProgressPolicy
  end
end
