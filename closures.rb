fibs = [1, 1, 2, 3, 5, 8, 13]
doubled_fibs = fibs.collect { |num| num * 2 }
puts doubled_fibs


# yielding
def greet
  puts "hi from inside the method"
  # runs the block to insert custom code here, then returns to the method
  yield
  puts "back inside the method"
end

greet { puts "hi from the block" }


def yield_name(name)
  puts "in the method yield_name"

  # yield control to the block with "sarthak" as ip
  yield("sarthak")

  puts "in btw yields"

  # yield again, passing the given name
  yield(name)

  puts "block complete. back in method"
end

yield_name("someone") { |n| puts "my name is #{n}." }


# to store a block of code that can be reused
multiples_of_7 = Proc.new do |n|
  n % 7 == 0
end
# & is used to convert proc into block
print (1..100).to_a.select(&multiples_of_7)


hi = Proc.new { puts "hello world" }
hi.call


num_arr = [1, 2, 3, 4, 5]
str_arr = num_arr.map(&:to_s)

puts str_arr


# anonymous func we can save, pass, and call like an object
def lambda_demo(lambda)
  puts "hello world"
  lambda.call
end

lambda_demo(lambda { puts "im a lambda" })


strings = %w[a b c d]

symbolize = lambda { |str| str.to_sym }

symbols = strings.collect(&symbolize)
print symbols


# lambda checks the args and returns control to the method
# proc ignores args mismatch and exits the method immediately