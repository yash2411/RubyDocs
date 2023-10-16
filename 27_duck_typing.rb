# For above below scenarios, if the object have price and calories then it is able to comparable with other object is know as duck typing
# In that means we can use object of one class with other class  
class Icecream
    attr_reader :flavor, :calories, :price 
    def initialize(flavor: , calories: , price:)
        @flavor = flavor
        @calories = calories
        @price = price
    end

    def ==(other)
        if calories == other.calories && price == other.price
            true
        else
            false
        end
    end
end

vanilal = Icecream.new(flavor: "Butterscotch", calories: 400, price: 250)
chocolate = Icecream.new(flavor: "Chocolate", calories: 500, price: 350)

p vanilal == chocolate