require 'pry'
class CashRegister
  attr_accessor :total, :discount
  attr_reader :title, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items_list = []
    @total_list = []
  end
  
  def add_item(title, price, quantity = 1)
    new_item = price * quantity
    @total += new_item
  for x in 1..quantity
    @items_list << title
    @total_list << price
  end
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
  
  def void_last_transaction
    @items_list.pop()
    last_item = @total_list.pop()
    @total -= last_item
  end
end
