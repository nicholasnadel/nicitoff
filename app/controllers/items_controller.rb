class ItemsController < ApplicationController

  def new 
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def create
  @item = Item.new(params[:item].permit(:title, :text))

    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(params[:item].permit(:title, :text))
      redirect_to @item
    else 
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end



  private
   def item_params
    params.require(:item).permit(:title, :text)
   end

  end