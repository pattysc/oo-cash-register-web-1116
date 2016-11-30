class CashRegister
  def initialize(discount=false)
    @total = 0
    @discount = discount
    @items = []
  end

  attr_reader :discount, :items

  attr_accessor :total, :last_item

  def add_item(item_name, price, quantity=1)
    @item_name = item_name
    quantity.times do
      @items << item_name
    end
    @price = price*quantity
    @total += @price

  end

  def void_last_transaction
    @total -= @price
  end

  def apply_discount
    if @discount
      @total = @total * (100 - @discount)/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  # def total
  #   @total
  # end
end
