class HomesController < ApplicationController
  def top
  @items = Item.all

  @items = @items.where('title LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end


  def search
    @items = Item.search(params[:keyword])
    @keyword = params[:keyword]
    render "top"
  end
end
