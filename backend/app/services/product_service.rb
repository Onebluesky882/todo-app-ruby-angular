class ProductService

  # Get all products
  def self.get_products
    Product.all
  end

  # Get single product
  def self.get_product(product_id)
    Product.find(product_id)
  end

  # Create product
  def self.create_product(params)
    Product.create!(params)
  end

  # Update product
  def self.update_product(product_id, params)
    product = Product.find(product_id)

    allowed = params.slice(
      :name,
      :price_cents,
      :image,
      :stock,
      :description,
      :category,
      :sub_category,
      :rating
    )

    product.update!(allowed)

    product
  end

  # Delete product
  def self.delete_product(product_id)
    Product.find(product_id).destroy
  end

end