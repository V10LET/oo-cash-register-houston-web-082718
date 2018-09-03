require 'pry'
class CashRegister
  attr_accessor :total, :discount
  attr_reader :title, :price
  
@@total = 0
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    new_item = @total += price * quantity
    @@total += new_item
  end
  
  def apply_discount
    discount = (@discount.to_f/100)
    binding.pry
    @total = @total - (@total * discount).to_i
    return ""
  end
end
