require_relative "person.rb"

person1 = Person.new "Bob", "Male", 28, 100, 1.8
person2 = Person.new "Alice", "Female", 26, 70, 1.7

puts person1.calculate_bmi
puts person2.calculate_bmi
