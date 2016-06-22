class ItemsController < ApplicationController
  before_action :set_list

  def new
    @item = @list.items.new
  end

  def create
    @item = @list.items.new approved_params
    if @item.save
      redirect_to @list
    else
      render :new
    end
  end

  private

  def set_list
    @list = current_user.lists.find params[:list_id]
  end

  def approved_params
    params.permit(:description, :due_date)
  end
end
