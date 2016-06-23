class ItemPolicy
  attr_reader :user, :item

  def initialize user, item
    @user, @item = user, item
  end

  def new?
    create?
  end

  def create?
    item.list.user == user
  end

  def edit?
    update?
  end

  def update?
    item.list.user == user
  end

  def destroy?
    item.list.user == user
  end
end
