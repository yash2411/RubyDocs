# Procs can assign to the variable, it is used to execute the chunk of multiple times, it is a ruby object, we can use it over and over.

to_cubes = Proc.new { |number| number**3}
# to_cubes = proc ({ |number| number**3})

a = [1, 2, 3]
b = [4, 5, 6]

x= a.map &to_cubes
p x
to_euros = Proc.new { |currency| currency * 0.84 }
to_rupees = Proc.new { |currency| currency * 82.28 }
to_pesos = Proc.new { |currency| currency * 17.55 }

us_dollars = [10, 20, 30, 40, 50]
more_us_dollars = [70, 80, 90]
p us_dollars.map(&to_euros)
p us_dollars.map(&to_rupees)
p us_dollars.map(&to_pesos)
p more_us_dollars.map(&to_euros)

puts

is_senior = Proc.new { |age| age > 60 }

ages = [10, 60, 83, 30, 43, 25]
p ages.select(&is_senior)
p ages.reject(&is_senior)

def talk_about(name, &my_proc)
    p "Name is #{name}"
    my_proc.call(name)
end

x = Proc.new { |name| p "Your name is #{name}" }
talk_about('Boris', &x)

