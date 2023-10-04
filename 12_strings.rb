puts "Hello\n"
puts 'Hello\n'
x=10
# puts 'Hello #{x}' #Raw string

# multline String

poetry = <<MLS
    Hello
    this is the new string

    -Yash
MLS

# puts poetry

#Comparing two strings

a="hello"
b="Hello"

puts a==b

# puts "A" < "Z"
# puts "Z" < "a"
# puts "hello" < "help"

first_name = "Harry"
last_name = "Potter"
# first_name.concat(last_name)
# first_name.prepend(last_name)
first_name << last_name
puts first_name

# puts "first_name".length
# puts "first_name".size

puts first_name.slice(-1)
# puts first_name[1]

story = "Once upon a time in Mumbai..."
puts story[5, 4]

p story.slice(4,4)

typo = "GeorgWashi"
typo.insert(5, 'e')
typo.insert(6, ' ')
# puts typo

s=''
puts s.empty?
puts nil.nil? # nil? will return true only for nil object

first_name.upcase
puts first_name.upcase
puts first_name.downcase
puts first_name.swapcase
puts first_name.capitalize
puts first_name.reverse