print "enter your first name:"
first_name = gets.chomp
# ! modifies the og string
first_name.capitalize!

print "enter your last name:"
last_name = gets.chomp
last_name.capitalize!

print "enter your city name:"
city = gets.chomp
city.capitalize!

print "enter your state or province name:"
state = gets.chomp
state.capitalize!


puts "your name is #{first_name} #{last_name} and you're from #{city}, #{state}"

puts "enter an int:"
user_num = Integer(gets.chomp)

if user_num < 0
  puts "you've put a negative int!"
elsif user_num > 0
  puts "you've put a negative int!"
else
  puts "you've put 0!"
end


age = 15

unless age >= 18
  puts "not old enough to vote!"
end


print "string please: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "nothing to do here"
end

puts "your string is: #{user_input}"


# text redaction program
puts "enter the text to search through:"
text = gets.chomp
puts "enter the word to redact:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "redacted "
  end
end