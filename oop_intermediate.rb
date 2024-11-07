class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  public

  def about_me
    puts "my name is #{@name} and i am #{@age} years old"
  end

  # all methods below this will be private
  private

  def bank_account_number
    @account_number = 12345
    puts "my bank account number is #{@account_number}"
  end
end

obj = Person.new("sarthak", 21)
obj.about_me
# obj.bank_account_number


class Person
  # creates a read only, getter method for @name
  attr_reader :name
  # creates a write only, setter method for @job
  attr_writer :job

  def initialize(name, job)
    @name = name
    @job = job
  end
end

class Person
  # creates both getter and setter methods for @name and @job
  attr_accessor :name
  attr_accessor :job

  def initialize(name, job)
    @name = name
    @job = job
  end
end


# used to define reusable methods and constants without creating an instance
module Circle
  PI = 3.142

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end


# scope resolution operator
# lets us access constants/methods from diff modules or classes
puts Math::PI

# loads external libraries or modules for added functionality
require 'date'
puts Date.today


class Angle
  include Math

  attr_accessor :radians

  def initialize(radians)
    @radians = radians
  end

  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
puts acute.cosine


module Action
  def jump
    @distance = rand(4) + 2
    puts "jumped forward #{@distance} feet"
  end
end

class Rabbit
  include Action
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

test1 = Rabbit.new("abc")
test2 = Cricket.new("def")

test1.jump
test2.jump


=begin
include - gives methods to objects created from the class
extend - gives methods to the class itself
=end

module Greetings
  def greet
    puts "hello from the class"
  end
end

class Class
  extend Greetings
end

Class.greet