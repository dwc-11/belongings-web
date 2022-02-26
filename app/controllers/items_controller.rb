class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @relations = @item.relations.build ##親モデル.子モデル.buildで子モデルのインスタンス作成
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item.id)

  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item.id), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
  end

  private
    def  item_params
      params.require(:item).permit(:name, :season, :amenity, :toransportation ,:_destroy,
      relations_attributes: [:id, :item_id, :activity_id ,:_destroy]
      )

    end


end