class Api::V1::ProductsController < ApplicationController

  def index
    products = ProductService.get_products

    render json: products
  end

  def show
    product = ProductService.get_product(params[:id])

    render json: product
  end

  def create
    product = ProductService.create_product(product_params)

    render json: product
  end

  def update
    product = ProductService.update_product(
      params[:id],
      product_params
    )

    render json: product
  end

  def destroy
    ProductService.delete_product(params[:id])

    render json: { message: "deleted" }
  end

  private

  def product_params
    params.permit(
      :name,
      :price_cents,
      :image,
      :stock,
      :description,
      :category,
      :sub_category,
      rating: [:stars, :count]
    )
  end

end