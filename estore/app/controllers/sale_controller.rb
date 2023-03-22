class SaleController < ApplicationController
  before_action :authenticate_user!

  def index
    @sale = Sale.new
    @sale.product_id = params[:product_id]
    @sale.user_id = current_user.id
    @sale.quantity = params[:quantity]
  end

  def new
    @sale = current_user.sales.build
    @product = Product.find(params[:product_id])
  end

  def create
    @sale = Sale.new
    @sale.product_id = params[:product_id]
    @sale.user_id = current_user.id
    @sale.quantity = 1
    @sale.payment_status = params[:payment_status]
    @sale.save
     # binding.pry
    if @sale.payment_status  == 'completed'
      product.update(inventory_count: product.inventory_count - quantity)
      redirect_to product_index_path, notice: 'Order Placed'
    else
      redirect_to product_index_path, notice: 'Payment Failed! order not placed'
    end
  end


  private

  def sale_params
    params.permit(:product_id, :user_id, :quantity, :payment_status)
  end
end
	
