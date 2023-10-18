# load will load the file everytime it defines extension(.rb) is necessary to load file
# require will load file one time no matter how many times defines in single file or other files, if one time it will load file it will not going to load will in other file
# require_relative will offer to get rid of ./
puts "hello"
# load "29_square.rb" # Program pause ruby will load content of this file
require "./29_square"
require_relative "29_square"
my_novel = File.open("novel.txt", "a") do |f|
    # f.puts "Adding a line"
    # f.write "No line break"
    # f.puts "Adding a line"

end
# my_novel.each { |line| puts line}

# File.rename("novel.txt", "something.txt")
# load "29_square.rb" # It will load this file again
File.delete("something.txt") if File.exist?("something.txt")

ARGV.each { |value| puts value.to_i*value.to_i }

puts Square::PI