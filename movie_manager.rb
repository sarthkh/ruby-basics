movies = {
  Joker: 3,
  Titanic: 2,
  Inception: 4
}

puts "what would you like?"
puts "type 'add' to add a movie"
puts "type 'update' to update a movie"
puts "type 'display' to display all movies"
puts "type 'delete' to delete a movie"

choice = gets.chomp.downcase

case choice
when "add"
  puts "what movie would you like to add?"
  title = gets.chomp
  # check if movie is not in hash
  if movies[title.to_sym].nil?
    puts "whats the rating? (type a num, 0 to 4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}"
  else
    puts "#{title} already exists! with the rating of #{movies[title.to_sym]}"
  end
when "update"
  puts "what movie would you like to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "movie not found!"
  else
    puts "whats the new rating? (type a num, 0 to 4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with a new rating of #{rating}"
  end
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "what movie would you like to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed with a rating of #{rating}"
  end
else
  puts "sorry please try again"
end