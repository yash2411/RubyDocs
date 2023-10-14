# A class is blueprint for creating an objects 
class Guitar
    attr_reader :pric, :wood, :strings # This method will create pric getter method behind the scenes
    puts "This is #{self}"
    def initialize 
        @type = 'Acoustic'
        @wood = 'Alder'
        @strings = 6
        @colors = ['Gold', 'Black']
    end

    def to_s
        "An #{@type} #{@wood} guitar with #{@strings} string"
    end

    def pric
        @price
    end

    def price=(new_price) #naming convention to set the variable
        @price = new_price
    end
end

# creating a Guitar class object and assigning to a variable 
acoustic = Guitar.new 
# acoustic.price=(200)
# acoustic.price = 300
p acoustic.pric
p acoustic.to_s
# p @type

# p pric
p acoustic.wood
p acoustic.pric
# Encapsulation: Hide the implementations of methods 
# instance methods only belong to object of class

# p acoustic.class here class method is not defined inside the but ruby provide some method to attach with object class, to_s
# to_s doesn't know what to print so it result the class name and object location

# p acoustic it will execute like this acoustic.to_s

# self will return in which is represented