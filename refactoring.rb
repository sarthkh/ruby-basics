puts "that's true" if true
puts "this will not print" unless true

puts 2 < 3 ? "2 is less than 3!" : "2 is not less than 3!"


puts "hi there!"
greeting = gets.chomp

case greeting
when "English" then puts "hello!"
when "French" then puts "bonjour!"
else puts "i dont know that language"
end


temp = nil
puts temp
# to assign if not set
temp ||= "gocomet"
puts temp


def a
  puts "checked a"
  true
end

def b
  puts "checked b"
  true
end

puts a || b
puts "---"
puts a && b


my_array = [2, 3, 4, 5, 6, 7]
my_array.each { |x| puts x if x % 2 == 0 }


"L".upto("P") { |letter| puts letter }


# to check if method exists
puts [1, 2, 3].respond_to?(:push)
puts [1, 2, 3].respond_to?(:next)


alphabet = %w[h e]
alphabet << "y"
caption = "hello "
caption << "world!"
print caption


require 'prime'

def first_n_primes(n)
  return "n must be an int" unless n.is_a? Integer
  return "n must be greater than 0" if n <= 0
  puts Prime.first n
end

first_n_primes(-2)