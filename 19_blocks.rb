# block can execute assign only once, it cannot be stored in a variable 
# blocks are not reusable, we cannot assign it to the variable

def something
    puts "Hello"
    yield("Yash")
end

something do |name|
    p "Bye #{name}"
end

def pass_control_on_condition
    yield if block_given?
    puts "First"
end

pass_control_on_condition {}

# def something(&block)
#     block.call 
# end

# p something {"hello"}

def speak(name)
    yield(name)
end
speak("Boris") { |name| p "Name is #{name}" }

def custom_each(elements)
    i=0
    while i < elements.length
        yield(elements[i])
        i+=1
    end
end

custom_each([1, 2, 3]) { |x| puts "Square of number #{x*x}"}

def custom_map(elements)
    new_arr=[]
    i=0
    while i < elements.length
        new_arr << yield(elements[i])
        i+=1
    end
    p new_arr
end

custom_map([1, 2, 3]) { |x| x+2}

