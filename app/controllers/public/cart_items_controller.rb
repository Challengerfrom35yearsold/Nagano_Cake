class Public::CartItemsController < ApplicationController
  def index
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end

  def create
    @cart_item = Cart_item.new(cart_item_params)
    @cart_item.save
    redirect_to admin_item_path(@item.id)
  end

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end

end
