class ItemController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
    @item = Item.new(item_params)

    @item.save
    redirect_to @item
  end
# for securtiy - to don't get something easy out of the db
  private
  def item_params
    params.require(:item).permit(:title, :notes)
  end
end
