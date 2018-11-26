require "pry"
class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, qty=1)
    self.total += price * qty
    qty.times do
    items << item
  end
  self.last_transaction = price * qty
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (total * ((100.0-discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
