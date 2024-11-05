def prime(n)
  puts "not an integer!" unless n.is_a? Integer
  is_prime = true
  (2..n - 1).each { |i|
    if n % i == 0
      is_prime = false
    end
  }
  if is_prime
    puts "#{n} is a prime"
  else
    puts "#{n} is not a prime"
  end
end

prime(9)
prime(23)
prime(31)


# splat arguments
def whats_up(greet, *friends)
  friends.each { |friend| puts "#{greet}, #{friend}!" }
end

whats_up("hey there", "sarthak", "aditya", "tarun")


def add(n1, n2)
  n1 + n2
end

op = add(10, 11)
puts op

# using method
def capitalize(str)
  puts "#{str[0].upcase}#{str[1..-1]}"
end

capitalize("india")

# using block
%w[abc def].each { |str| puts "#{str[0].upcase}#{str[1..-1]}" }


my_array = [3, 4, 8, 7, 1]
print my_array.sort

sample = ["a b c", "x y z", "o p q"]
# in ascending
print sample.sort
# in descending
print sample.sort { |first, second| second <=> first }

# compare strings lexicographically
str1 = "today is tuesday"
str2 = "yesterday was monday"

print str1 <=> str2


# custom sorting
def alphabetize(arr, rev = false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["the pragmatic programmer", "code complete", "harry potter"]

puts "a-z #{alphabetize(books)}"
puts "z-a #{alphabetize(books, true)}"