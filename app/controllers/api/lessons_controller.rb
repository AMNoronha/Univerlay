class Api::LessonsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]
  # skip_before_action :verify_authenticity_token
  def index
    @lessons = policy_scope(Lesson, policy_scope_class: Api::LessonPolicy::Scope)
    respond_to do |format|
      format.json { render json: current_user.lessons }
    end
  end
end
