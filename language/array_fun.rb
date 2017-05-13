my_array = []
my_array << 1
my_array << 2
puts my_array

puts 'For loop'
my_array.each{ |element| puts element}

require_relative 'bookInStock'

books = []
books << BookInStock.new("isbn1", 33.80)
