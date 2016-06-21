class ListsController < ApplicationController
  def new
  end

  def create
    list = current_user.lists.create! title: params[:title]
    redirect_to "/lists"
  end

  def index
    @lists = current_user.lists
  end

  def show
    @list = current_user.lists.find params[:id]
  end

  def destroy
    list = current_user.lists.find params[:id]
    list.destroy
    redirect_to "/lists"
  end
end
