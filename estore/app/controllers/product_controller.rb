class ProductController < ApplicationController
	before_action :authenticate_user!

	def index
		@products = Product.all.order(:id)
	end

	def show
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render :edit
		end
	end

	private

	def product_params
		params.permit(:name, :description, :price, :inventory_count)
	end

end

