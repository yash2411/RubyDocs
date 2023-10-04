def fizbuzz(n)
    i=1
    while i <= n
        if i%3==0 && i%5==0
            puts "FizzBuzz"
        elsif i%3==0
            puts "Fizz"
        elsif i%5==0
            puts "Buzz"
        else
            puts i
        end
        i=i.next
    end
end

# fizbuzz(30)

def factorial(n)
    if n==1
        1
    else
        n*factorial(n-1)
    end
end

# puts factorial(5)
