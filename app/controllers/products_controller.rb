class ProductsController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.build(product_param)
    @product.save
    redirect_to category_path(@product.category_id)

  end

  private
  def product_param
  params.require(:product).permit(:name, :price)
  end
end
