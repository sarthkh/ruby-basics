class Language
  # constructor
  def initialize(name, creator)
    @name = name
    @creator = creator
  end

  def description
    # access instance vars to display
    puts "i am #{@name}. i was created by #{@creator}"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")

ruby.description
python.description


# using @files instead of @@files to avoid shared state across subclasses
class Computer
  # global variable
  $manufacturer = "GoComet"
  # class variable
  # @@files = { hello: "hello world" }
  # class instance variable
  @files = { hello: "hello world" }

  def initialize(username, password)
    # instance variable
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  # class method to access the shared class variable
  def self.display_files
    # @@files
    @files
  end
end

# instance of Computer class
hal = Computer.new("sarthkh", 12345)

puts "current user: #{hal.current_user}"
puts "manufacturer: #{$manufacturer}"
puts "files: #{Computer.display_files}"


# parent class
class ApplicationError
  def display_err
    puts "Error!"
  end
end

# child class inherits from parent to reuse functionality
class Crucial < ApplicationError
end

err = Crucial.new
err.display_err


class Notification
  def initialize(message)
    @message = message
  end

  def display
    "new message: #{@message}"
  end
end

class ImportantNotification < Notification
  def display
    puts "important"
    super + "!"
  end
end

regular = Notification.new("meeting at 3pm")
important = ImportantNotification.new("server is down")
puts regular.display
puts important.display


class Machine
  # @@users = {}
  def self.users
    @users ||= {}
  end

  def initialize(username, password)
    @username = username
    @password = password
    # @@users[@username] = password
    self.class.users[@username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}"
  end

  # def Machine.get_users
  #   @@users
  # end
  def self.get_users
    users
  end
end

machine1 = Machine.new("sarthak", 1234)
machine2 = Machine.new("someone", 5678)

machine1.create("test.txt")
machine2.create("train.txt")

puts "users: #{Machine.get_users}"

=begin
we should avoid class variables (@@) as they share state across all subclasses
use class instance variables (@) instead for better maintainability
=end