empty_hash = {}
p empty_hash
p empty_hash.class 
p empty_hash.length 
p empty_hash.empty?

nfl_roaster_salaries = {
    'Patrick' => 50_000_000,
    'Yash' => 1000_000_0000
}
p nfl_roaster_salaries.size
p nfl_roaster_salaries.fetch('Yash')
p nfl_roaster_salaries.keys
p nfl_roaster_salaries.values
p nfl_roaster_salaries.store('Dhoni', 50_000_000)
nfl_roaster_salaries = nfl_roaster_salaries.merge({'Raine' => 20_000_00})
p nfl_roaster_salaries.delete('Raine')
p nfl_roaster_salaries.fetch('sds', 0)


a="hello"
b="hello"
c= :hello
d= :hello

p c.object_id
p d.object_id

# => HashRocket
person = {
    :name => "Yash",
    age: 24,
    profession: "Developer"
}

p person["name"]

red = 239
green = 0
blue = 50

# colors = {
#     red: red,
#     green: green,
#     blue: blue
# }

# p colors

color = { red:, green:, blue: }

p color

salaries = { director: 100000, producer: 200000, ceo: 300000 }
salaries.each { |position, salary| p "This #{position} earns #{salary} "}

salaries.each_key { |key| p key }

p salaries.include?(:director)
p salaries.include?("director")
p salaries.key?("director")
p salaries.has_key?("director")
p salaries.has_value?(200000)

p salaries.select { |position, salary| salary>=200000}
p salaries.reject { |position, salary| salary>=200000}

p salaries.to_a
p [[1, 2], [3, 4]].to_h

p salaries
salaries.merge!(developer: 400000)
p salaries

h = Hash.new(100)
p

# team_members = Hash.new([])
# team_members = Hash.new do
#     []
# end

team_members = Hash.new do |hash,key|
    my_array
end
p team_members["morocco"]
p team_members
team_members["morocco"] << "Hello"
p team_members["morocco"]

