class Order

  attr_reader :order

  def initialize(hash)
    @order = hash
  end

  def count_items
    @order.reduce(0){|sum,(item,count)| sum+=count}
  end

  def sum_order
    @order.reduce(0){|sum,(item,count)| sum+=count*item.price}.round(2)
  end


end