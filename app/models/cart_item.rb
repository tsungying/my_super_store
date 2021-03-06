class CartItem
  attr_reader :item_id, :quantity

  def initialize(item_id, quantity = 1)
    @item_id = item_id
    @quantity = quantity
  end

  def increment_quantity(n = 1)
    @quantity += n
  end

  def product
    Product.find_by(id: @item_id)
  end
end
