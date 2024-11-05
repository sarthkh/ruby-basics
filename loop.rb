counter = 1
while counter < 3
  puts counter
  # theres no ++ or --, instead use += or -=
  counter += 1
end


i = 1
# runs as long as condition is false
until i > 5
  puts "Number: #{i}"
  i += 1
end


# .. includes end value ... excludes end value
for i in 1..5
  puts "Number: #{i}"
end

(1..5).each { |num|
  puts "number #{num}"
}


# used to create infinite loops or when range is not known
i = 20
loop do
  i -= 1
  # skip if i is odd
  next if i % 2 != 0
  puts "#{i}"
  break if i <= 0
end


my_array = (1..7).to_a
puts my_array.inspect

my_array.each do |x|
  x += 10
  print "#{x}"
end


5.times { print "gocomet" }


i = 3
while i > 0 do
  print i
  i -= 1
end

j = 3
until j == 0 do
  print j
  j -= 1
end


i = 3
while i > 0 do
  print i
  i -= 1
end

j = 3
until j == 0 do
  print j
  j -= 1
end


n = 0
loop do
  n += 1
  print "Ruby!"
  break if n == 30
end