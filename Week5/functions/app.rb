# word = "Hello, world!"
#
# def say_hello w
#   puts w
# end
#
# say_hello word

# num1 = 8
# num2 = 33.5
#
# def add(num1, num2)
#   return num1 + num2
# end
#
# result = add num1, num2
#
# puts result

# def create_user name, course
#   puts "#{name} is in course #{course}"
# end
#
# create_user "Brian", "Introduction to Banana Theory"

# def say_some_words *words, last_word
#   p words
#   p last_word
# end
#
# say_some_words "these", "are", "some", "words"

def say_what_when what, *people, time
  people.each do |person|
    puts "Hey #{person}, #{what}!, #{time}"
  end
end

say_what_when "Hello", "Steve", "Bob", "Right now!"
