class Api::ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def new
    render json: Product.new
  end

  def show
    render json: Product.find(params[:id])
  end

  def create
    product = Product.new(filtered_params)

    if product.save
      render json: product, status: :created
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])

    if product.update(filtered_params)
      render json: product
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.new(params[:id])

    if product.destroy
      render json: destroy
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end

  private

  def filtered_params
    params.require(:product).permit(:name)
  end
end