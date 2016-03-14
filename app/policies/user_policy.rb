class UserPolicy < ApplicationPolicy
  attr_reader :user, :attraction

  def initialize(user, attraction)
    super(user, attraction)
    @attraction = record  
  end

  def index?
     user.admin?
   end

  def update?
    user.admin? || user.vip? || attraction.try(:user) == user
  end

  def show?
    user.admin? || record == user
  end

  def destroy?
    user.admin?
  end
end