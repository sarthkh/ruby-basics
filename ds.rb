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


details = {
  "fname" => "sarthak",
  "lname" => "khandelwal",
  "age" => "21",
}

details.each do |key, value|
  puts value
end


# using symbols in hashes
specs = {
  :cpu => "amd ryzen",
  :gpu => "amd radeon",
  :cooler => true,
}

puts specs[:cpu]


# diff objects
puts "string".object_id
puts "string".object_id
# same objects
puts :symbol.object_id
puts :symbol.object_id


strings = %w[html css js py rb]
symbols = []

strings.each do |s|
  # we can also use s.intern
  symbols.push(s.to_sym)
end

print symbols


# newer hash syntax
movies = {
  alien: "horror sci-fi",
  titanic: "action drama"
}


grades = {
  a: 100,
  b: 92,
  c: 95,
  d: 97
}

# to filter hash
puts grades.select { |name, grade| grade < 97 }
puts grades.select { |k, v| k == :a }
# to iterate over just keys or values
grades.each_key { |k| puts k }
grades.each_value { |v| puts v }