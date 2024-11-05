arr = ["gocomet", 100, "sarthak", 25]
print arr[2]

multi_d_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
multi_d_array.each { |x| puts "#{x}\n" }


# to store related info with easy access
hash = {
  "name" => "hello world",
  "age" => 20,
  "excited?" => true
}

puts hash["name"]
puts hash["age"]
puts hash["excited?"]

# empty hash
new_hash = Hash.new
new_hash["one"] = 1
new_hash["boolean"] = true

puts new_hash

arr.each { |x| puts "#{x}" }
hash.each { |x, y| puts "#{x}: #{y}" }


s = [%w[a b], %w[c d], %w[e f]]
s.each { |sub| sub.each { |e| puts e } }


# creating histogram
puts "enter a text pls:"
text = gets.chomp

words = text.split(" ")
# to ensure each word starts with count 0
frequency = Hash.new(0)

words.each { |word| frequency[word] += 1 }
frequency = frequency.sort_by { |a, b| b }

frequency.reverse!
frequency.each { |word, freq| puts word + " " + freq.to_s }