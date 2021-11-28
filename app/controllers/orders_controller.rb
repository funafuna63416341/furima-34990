class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @order_shipping = OrderShipping.new
    @item = Item.find(params[:item_id])
    if current_user.id == @item.user.id
      redirect_to root_path
    elsif @item.order.present?
      redirect_to root_path
    end
  end

  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @order_shipping = OrderShipping.new(order_shipping_params)
    if @order_shipping.valid?
      pay_item
      @order_shipping.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_shipping_params
    params.require(:order_shipping).permit(:postal_code, :prefectures_id, :municipalities, :address, :building_name, :telephone_number, :order).merge(
      user_id: current_user.id, item_id: params[:item_id], token: params[:token]
    )
  end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY'] # 自身のPAY.JPテスト秘密鍵を記述しましょう
    Payjp::Charge.create(
      amount: @item.price, # 商品の値段
      card: order_shipping_params[:token], # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end
end