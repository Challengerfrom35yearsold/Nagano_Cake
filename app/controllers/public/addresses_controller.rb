class Public::AddressesController < ApplicationController
  def index
    @address = Address.new

    @addresses = current_customer.addresses

    # current_customer.呼び出したいアソシエーション で関連するデータを取得できる
    # current_customer は ログインしているユーザーを Customer.find(ログインユーザーid)で検索しているだけ
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    @address.save
    redirect_to addresses_path
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to addresses_path
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end
end
