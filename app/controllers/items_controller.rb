class ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
  end
  
  def edit
  end
  
  def destroy
  end
  
  private
    def  item_params
      params.require(:item).permit(:name, :season, :amenity, :toransportation )
    end
end