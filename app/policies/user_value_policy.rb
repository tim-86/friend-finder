class UserValuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    true
  end

  def create?
    true
  end

  def quiz?
    true
  end
end
