class ItemsController < ApplicationController
  def new
    @list_id = params[:list_id]
  end

  def create
    Item.create! description: params[:description], list_id: params[:list_id]
    redirect_to "/lists/#{params[:list_id]}"
  end
end
