# Keyword Argument 
class Candidate 
    def initialize(details = {})
        @name = details.fetch(:name)
        @age = details.fetch(:age)
        @occupation = details.fetch(:occupation)
        @hobby = details.fetch(:hobby)
        @birthplace = details.fetch(:birthplace)
    end
end

Candidate.new({
    name: "Yash",
    age: 23,
    occupation: "Developers",
    hobby: "Cricket",
    birthplace: "India"
})

# Required Argument 

def sum(a:, b:)
    a + b
end

p sum(b:2, a: 3)

# Optional Argument 

def sum(a: 0, b: 0)
    a + b
end

p sum(b:2, a: 3)

# Positional and Keyword Arguments 

def sum(a, b: 0)
    a + b
end

p sum(2, b: 3)