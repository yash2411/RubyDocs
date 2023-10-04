alpha = 'A'...'z'
num = 1...5
p alpha.first
p num.last
p num.last(1)
p alpha.include?('a')
p alpha.member?('a')

p alpha.include?('z')
p alpha.member?('z')

p alpha === 'a'

p rand.round(2)
p rand.round(2)*30 # will return the random number between 0 to 30
p rand(100) # will return the number between 0 to 99

puts rand(5..20) # will return the integer between 5 to 20

story = "Once upon a time in a land far"
puts story[27..29]
puts story.slice(5..9)

def calculate_grade(grade)
    case grade
    when 90..100 then "A"
    when 80..89 then "B"
    else "F"
    end
end

puts calculate_grade(7)