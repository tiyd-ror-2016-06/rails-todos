class ListPolicy
  def initialize user, list
    @user, @list = user, list
  end

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
    @user == @list.user
  end

  def has_lists_available?
    true
    # if @user.premium?
    #   @user.lists.count < 100
    # else
    #   @user.lists.count < 10
    # end
  end
end
