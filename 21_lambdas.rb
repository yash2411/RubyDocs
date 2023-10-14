squares = proc { |x| x**2 }
# square_lambda = lambda { |x| x**2 }
square_lambda = ->(x) { x**2 }
# p [1,2,3].map &square_lambda

# Proc Vs Lambda 

# lambda take cares of every argument in other side proc assign nil to extra args 

def do_stuff(&code)
    code.call(2)
end

my_proc = Proc.new { |x,y| p x*2}
my_lambda = ->(x, y) { p x*2 }

do_stuff(&my_proc)
# do_stuff(&my_lambda)

# p [1, 2, 3].map &my_proc
# p [1, 2, 3].map &my_lambda

my_proc = proc { return "PROC Return"}
my_lambda = lambda { return "PROC Return"}

# when lambda returns it passes back control to the method
# when proc returns it triggers a return from calling method
def execute(&code)
    p "Starting execution"
    p code.call
    p "Ending execution"
end

execute(&my_proc)
execute(&my_lambda)
