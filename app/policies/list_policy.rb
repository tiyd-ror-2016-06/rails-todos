class ListPolicy < ApplicationPolicy
  def show?
    is_owner?
  end

  def destroy?
    is_owner?
  end

  def create?
    is_owner? && has_lists_available?
  end

  private

  def is_owner?
    user == record.user
  end

  def has_lists_available?
    true
  end
end
