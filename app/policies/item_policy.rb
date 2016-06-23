class ItemPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    record.list.user == user
  end

  def update?
    record.list.user == user
  end

  def destroy?
    record.list.user == user
  end
end
