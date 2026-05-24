class CartService

  def self.get_cart(user_id)
    Cart.find_or_create_by(
      user_id: user_id,
      status: 'onCart'
    )
  end

  def self.create_cart(user_id)
    Cart.create!(
      user_id: user_id,
      status: 'onCart',
      items: [],
      qty: 0,
      total: 0
    )
  end

  def self.add_to_cart(user_id, product, qty)

    cart = get_cart(user_id)

    items = cart.items || []

    existing = items.find do |i|
      i["product_id"] == product["id"]
    end

    if existing

      existing["qty"] += qty

    else

      items << {
        "product_id" => product["id"],
        "name" => product["name"],
        "image" => product["image"],
        "price_cents" => product["price_cents"],
        "qty" => qty
      }

    end

    cart.items = items

    # calculate total
    cart.total = items.sum do |i|
      i["price_cents"].to_i * i["qty"].to_i
    end

    # calculate qty
    cart.qty = items.sum do |i|
      i["qty"].to_i
    end

    cart.save!

    cart
  end

  def self.checkout( cart_id, user_id)
    cart = Cart.find_by( id: cart_id, user_id: user_id, status: "onCart")

    raise "Cart not found" if cart.nil?
    
    cart.update!(status: "paid")
    cart
  end


  def self.remove_from_cart(user_id, cart_id, product_id)

  cart = Cart.find_by(

    user_id: user_id,

    id: cart_id,

    status: "onCart"

  )

  raise "Cart not found" unless cart

  items = cart.items || []

  # check product exists

  existing = items.find do |i|

    i["product_id"] == product_id

  end

  raise "Product not found in cart" unless existing

  # remove item

  items = items.reject do |i|

    i["product_id"] == product_id

  end

  cart.items = items

  # recalculate total

  cart.total = items.sum do |i|

    i["price_cents"].to_i * i["qty"].to_i

  end

  # recalculate qty

  cart.qty = items.sum do |i|

    i["qty"].to_i

  end

  cart.save!

  cart

end
end