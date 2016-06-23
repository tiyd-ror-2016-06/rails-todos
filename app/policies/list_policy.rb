class ListPolicy < ApplicationPolicy
  def show?
    true
  end

  def destroy?
    is_owner?
  end

  def create?
    is_owner? && has_lists_available?
  end

  def add_items?
    is_owner?
  end

  private

  def is_owner?
    user == record.user
  end

  def has_lists_available?
    true
  end
end
