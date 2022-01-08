class LessonProgressPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def update?
    true
  end

  def index?
    true
  end

  def approve?
    true
  end

  def complete?
    true
  end

  def return_filtered_lesson
    true
  end

  def destroy?
    true
  end
end
