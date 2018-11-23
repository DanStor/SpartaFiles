require_relative "functions.rb"

# i = 0

# Do
# loop do
#   say_hello
#   i +=
#   if i > 5
#     break
#   end
# end

# While
# while i < 10
#   say_hello
#   i += 1
# end

# Do While
# begin
#   say_hello
#   i += 1
# end while i < 5

# For
# for i in 0..5
#   puts "This loop has run #{i} times"
# end

# Letters
# for letter in "a".."z"
#   puts letter
# end

# For Each
# (0..5).each do |j|
#   puts "The value of i is #{j}"
# end

# some_words = ["These","are","a","bunch","of","words"]
# some_words.each do |word|
#   puts word
# end

# some_words = ["These","are","a","bunch","of","words"]
# reversed_words = some_words.map do |word|
#   word.reverse
# end
# print reversed_words

# OR

# some_words = ["These","are","a","bunch","of","words"]
# reversed_words = some_words.map { |e| e.reverse }
# print reversed_words

# OR

# some_words = ["These","are","a","bunch","of","words"]
# some_words.map! { |e| e.reverse }
# print some_words

# person = {
#   name: "Dan",
#   age: 23,
#   hair: "brown",
#   eyes: "grey",
#   height: "some"
# }
#
# person.each do |key, value|
#   puts "Key: #{key}, Value: #{value}"
# end

# some_numbers = [1,4,5,2,3,1,2,4]
# sum = some_numbers.reduce do |total, number|
#   total + number
# end
# puts sum

# OR

some_numbers = [1,4,5,2,3,1,2,4]
sum = some_numbers.reduce(:+)
puts sum
