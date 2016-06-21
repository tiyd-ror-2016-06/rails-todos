class ListsController < ApplicationController
  def new
  end

  def create
    list = current_user.lists.create! title: params[:title]
    redirect_to "/lists"
  end

  def index
  end
end
