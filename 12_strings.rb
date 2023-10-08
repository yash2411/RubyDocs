require 'debug'
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

sentence = "Hi, my name is Yash. My favorite hobby is building apps"
p sentence.split("e")

p sentence.chars
sentence.each_char do |c|
    if c == 'e'
        p "Found e"
        break
    end
end

# def custom_split(text, delimiter)
#     new_arr=[]
#     str=''
#     text.each_char do |c|
#         if c==delimiter
#             new_arr.push(str)
#             str=''
#         else
#             str.concat(c) 
#         end
#     end 
#     new_arr.push(str)
#     new_arr,
# end

# p custom_split(" Hello", " ")
p [1, 2, 3].join(',')

def custom_join(arr, deli)
    str=''
    arr.each_with_index do |val, index|
        unless (arr.length - 1) == index
            str.concat(val, deli)
        else
            str.concat(val)
        end 
    end
    str
end 

# p custom_join(["Hello", "Hi"], '!')

p "Hello".count('elo')

def custom_count(str, char)  
    count=0 
    str.each_char do |c|
        if char.include?(c)
            count = count.succ
        end
    end
    count
end 

# p custom_count("World", 'd')
p "Hello".index('lo')
p "hello".index("l")
p "hello".rindex("l")
p "hello".index("l",3)

new_str = "Hello World"
new_str.delete!('lo ')
p new_str