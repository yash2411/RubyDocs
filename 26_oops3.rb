class Employee 
    attr_reader :name
    attr_accessor :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def introduce
        "Hi my name is #{name} and i am #{age} years old"
    end
end


class Manager < Employee
    attr_reader :rank
    #name and age will also be available as getter and setter
    def initialize(name, age, rank)
        super(name, age)
        @rank = rank
    end

    def introduce
        p super
        "Hi my name is #{name} and i am the manager"
    end

    def yell 
        "Hey, i am the boss"
    end
end

class Worker < Employee
end
emp1 = Employee.new('Yash', 23)
p emp1.name 
p emp1.introduce

manager1 = Manager.new('Bob', 31, "first")
worker1 = Worker.new('Harry', 24)

p manager1.name
# puts manager1.class
# puts worker1.class
# puts worker1.class.superclass
# p worker1.class.ancestors 

puts manager1.introduce

# Manager is subclass of Employee

puts Manager < Employee
# puts manager1.instance_of?(Employee) # return true if will directly class of an object
# puts manager1.is_a?(Employee) # return true if inherits ancestors class of an object

# p manager1.methods
# super keyword invoke method with same name in super class

# super with no parenthisis will implicily pass the argument 
class Car
    attr_reader :maker
    def initialize(maker)
        @maker = maker
    end

    # def drive(speed)
    #     "Room! Room at #{speed} mph"
    # end

    def drive
        "Room! Room"
    end
end

class FireTruck < Car
    def initialize(maker, sirens)
        super(maker)
        @sirens = sirens
    end
    def drive(speed)
        # super + " Beep! Beep at #{speed} mph"
        super() + " Beep! Beep at #{speed} mph"
    end
end

ft = FireTruck.new("sd", "2")
p ft.drive(45)

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