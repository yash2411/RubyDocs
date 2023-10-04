require 'debug'
p %w[jack jill 2]
fruits = ["Apple", "Orange", "Banana", "Guava"]

p fruits.slice(1,2)

p fruits.[](1)

# fruits[5] = "Mango"

p fruits.fetch(1, "Banana")
p fruits.fetch(20, "Banana")

# fruits[2,2] = ["Berry"]
# p fruits

# p fruits.values_at(0,3)
# p fruits.values_at(-1)
p fruits.values_at(-1, 3, 0, -2)

p fruits.first(2)
p fruits.last 

p fruits.length
# p fruits.size
# p fruits.count
p fruits.count("Banana")

p fruits.empty?
p fruits.nil?
 #spaceship operator <=> left side value is smaller return -1, 0 for equal values, 1 for right side values.
 vegetables = ["Okra", "Egg Plant", "Cauliflower"]
 p fruits <=> vegetables
 p 5 <=> fruits
 p fruits
 fruits.push("Mango")
#  fruits.push("Mango", "Berries")
#  fruits << "Berries"<< "Kiwi"
fruits.insert(0, "Pomegranate", "Papaya")
#  p fruits

# fruits.pop(4)
# p fruits.pop(4)
# fruits.delete("Guava")
# fruits.delete_at(1)
p fruits

fruits.shift
fruits.unshift("Melons")
p fruits

arr=[]
fruits.each { |val| arr.push(val) if val.length >5 }
# p arr


fruits.each_with_index do |fruit, index|
    p "#{fruit} at index #{index}"
end

# for i in fruits
#     puts i
# end
# each method only iterate the array
# map method iterate and return the new array, it is used to perform operation and return the new array

# new_arr = fruits.map { |fruit| fruit.length}
# new_arr = fruits.collect { |fruit| fruit.length}
# p fruits
# p new_arr

new_arr = fruits.select { |fruit| fruit.length>5}
new_arr = fruits.reject { |fruit| fruit.length>5}
p fruits
p new_arr