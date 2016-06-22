class ItemsController < ApplicationController
  before_action :set_list

  def new
  end

  def create
    @list.items.create! description: params[:description]
    redirect_to "/lists/#{@list.id}"
  end

  private

  def set_list
    @list = current_user.lists.find params[:list_id]
  end
end
