class ListPolicy
  def initialize user, list
    @user, @list = user, list
  end

  def show?
    @user == @list.user
  end
end
