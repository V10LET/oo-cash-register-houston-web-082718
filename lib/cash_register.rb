require 'pry'
class CashRegister
  attr_accessor :total, :discount
  attr_reader :title, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_list = []
    @total_price = 0
  end
  
  def add_item(title, price, quantity = 1)
    new_item = @total += price * quantity
    @total_price += new_item
    @items_list << title
  end
  
  def apply_discount
    if @discount > 0
      discount = (@discount.to_f/100)
      @total = @total - (@total * discount).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items_list
  end
end
