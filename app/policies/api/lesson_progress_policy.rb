class Api::LessonProgressPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user)
    end
  end

  def index?
    true
  end

  def update?
    true
  end
end
