def sum(a, b)
    begin
        a + b 
    rescue TypeError => exception
        puts "Class Name: #{exception.class}"
        puts "Message: #{exception.message}"
    rescue => exception
        puts "Class Name: #{exception.class}"
        puts "Message: #{exception.message}"
        a = 0
        b = b.to_i
        # retry
    else #It will run when begin block get executed successfully
        "Begin run successfully"
    ensure # It will always going to run
        puts "Code run successfully"
    end
end

p sum(3, "5")
p sum(nil, nil)
# raise "Error occured" if true

class CustomError < StandardError
    def custom(val)
        raise CustomError, "Custom error occured hehe" if val == 2
    end
end

ce = CustomError.new
begin
    ce.custom(3)
rescue CustomError => e  
    puts e.message
else
    "begin executed successfully"
end