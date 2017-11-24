class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @products = Product.all
    @product = Product.new product_params
    @product.absolute_url = URI.join(request.url, @product.image.url(:small))
    if @product.valid?
      @product.save!
      flash[:success] = "Product was successfully added to database!"
      render 'index'
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end


  def destroy
    @product = Product.find_by_product_model_name(params[:product_model_name])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(
        :product_type,
        :brand,
        :product_model_name,
        :price,
        :image,
        :absolute_url
    )
  end
end
