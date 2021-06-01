class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    @user == @record.user || @user.admin
  end

  def new?
    @user == @record.user || @user.admin
  end

  def create?
    @user == @record.user || @user.admin
  end

  def destroy?
    @user == @record.user || @user.admin
  end
end
