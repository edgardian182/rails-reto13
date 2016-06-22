class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :create]

  def index
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def product_params
      params.require(:product).permit(:name, :price)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
