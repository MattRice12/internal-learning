# at the top of the file I require other files which define the classes that I'm using in this file.
require "./user.rb"
require "./fellowship.rb"

##### Working with 1 class #####

# Creating instances of the class
matt = User.new("Matt", "Rice", 31)
frodo = User.new("Frodo", "Baggins", 50)
aragorn = User.new("Aragorn", "Elessar", 87)
gandalf = User.new("Gandalf", "the Gray", 2019)

puts matt.full_name
#=> "Matt Rice"

puts gandalf.personal_description
#=> "Gandalf the Gray is 2019 years old."

puts User.new("Gimli", "son of Gloin", 139).personal_description
#=> "Gimli son of Gloin is 139 years old."


##### Two classes working together #####

members = [matt, frodo, aragorn, gandalf]
fellowship = Fellowship.new(members)

# if I `puts` each member of the class, I'm printing out the `instance` of the class itself. This is not a desired result, but it's helpful to recognize what it looks like when it happens.
puts fellowship.members
#=> #<User:0x007f956501ef30>
#=> #<User:0x007f956501eeb8>
#=> #<User:0x007f956501ee18>
#=> #<User:0x007f956501ed78>

# To get values in each class, I need to itterate through each member, and then puts whatever I want on that member
fellowship.members.each do |member|
  puts member.full_name
end
#=> Matt Rice
#=> Frodo Baggins
#=> Aragorn Elessar
#=> Gandalf the Gray

# I can add a new member to the Fellowship class by directly modifying `members`, which is defined as an attr_accessor int he Fellowship class:
gimli = User.new("Gimli", "son of Gloin", 139)
fellowship.members.push(gimli)
fellowship.members.each { |member| puts member.full_name }
#=> Matt Rice
#=> Frodo Baggins
#=> Aragorn Elessar
#=> Gandalf the Gray
#=> Gimli son of Gloin

# I can also define a method in Fellowship, and add a new member that way
legolas = User.new("Legolas", "Greenleaf", 2931)
fellowship.add_member(legolas)
fellowship.members.each { |member| puts member.full_name }
#=> Matt Rice
#=> Frodo Baggins
#=> Aragorn Elessar
#=> Gandalf the Gray
#=> Gimli son of Gloin
#=> Legolas Greenleaf
