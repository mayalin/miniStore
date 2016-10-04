class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def add_to_cart
    @product = Product.find(params[:id])

    if !current_cart.products.include?(@product)
      if !@product.size.nil?
        current_cart.add_product_to_cart(@product)
        flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
      else
        flash[:warning] = "请先选择Size，并更新。"
      end
    else
      flash[:warning] = "你的购物车内已有此物品"
    end

    redirect_to :back
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, :size)
  end
end
