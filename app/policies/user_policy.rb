class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def edit?
    true
  end

  def update?
    edit?
  end

  def show?
    true
  end

end
