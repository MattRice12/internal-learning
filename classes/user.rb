class User
  attr_reader :first_name, :last_name
  attr_accessor :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    first_name + " " + last_name
  end

  def personal_description
    "#{full_name} is #{age} years old." 
  end
end
