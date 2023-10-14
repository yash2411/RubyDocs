# Private method cannot be called outside the class and can be invoked by the current object
# Protected method can be invoked by the same class object and inside the class
class Student
    def initialize(name, prof)
        @name = name
        @prof = prof
    end

    def get_info(obj)
        self.people_info
        # obj.people_info

        self.hello
        obj.hello
    end

    private
    def people_info
        "Name is #{@name} and profession is #{@prof}"
    end

    protected 
    def hello
        p "Hello"
    end
end

s1 = Student.new("Yash", "Dev")
s2 = Student.new("Rahul", "QA")
p s1.get_info(s2)
# p s.hello

# derived value can be calculated another piece of state 

class Rectangle
    def initialize(height, width)
        @height = height
        @width = width
    end
    
    def area
        height * width
    end
end

r1 = Rectangle.new(200,300)
r2 = Rectangle.new(300, 400)

# class methods can be called with class even if instance don't exist

class Vehicle 
    attr_reader :wheels, :passengers
    def initialize(wheels, passengers)
        @wheels = wheels
        @passengers = passengers
    end

    class << self
        def hello
            p 'I am class method'
        end
    end

    def self.hello
        p 'I am class method'
    end
end

Vehicle.hello
vehicle = Vehicle.new(10, 2)
vehicle.hello