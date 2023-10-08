a = [1, 2, 3]
b = a 
p a.object_id
p b.object_id

a.push(4)

p a,b

c = [1, 2, 3]
d = c.dup 
e = c.clone
p c.object_id, d.object_id, e.object_id

# freeze make it immutable 

name = "Yash".freeze
# name << "Hello"

# with dup can modify the frozen object 
name1 = name.dup
name1 << "Bye"

# with clone can't modify the frozen object
# name2 = name.clone
# name2 << "Oh"
# we can reassign the variable
# name = "Rahul"

# p name2


def append_s(elements)
    elements<<5
end

values = [1, 2, 3, 4]
# we are passing the actuall object instead of copy
append_s(values)
p values

def append_a(elements)
    # will reassign the elements variable without changing the values variable 
    elements = []
end

values = [1, 2]
append_a(values)
p values