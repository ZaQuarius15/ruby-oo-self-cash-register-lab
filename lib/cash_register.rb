class CashRegister
    attr_accessor :total, :discount, :items, :price


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    

    def add_item(title, price, quantity=1)
        @price = price * quantity
        quantity.times do 
            @items << title
        end
        @total += price * quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            @total = @total - (@total * @discount / 100)
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= self.price
    end
end