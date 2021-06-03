class ValuePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

  end

def select?
  true
end
  # def show?
  # true
  # end
end
