require_relative '../animal.rb'
require_relative '../animalTypes/mammals.rb'

class Dog < Animal
  include Mammals

  def speak
    puts "woof"
  end

  def number_of_legs
    Quadruped.legs
  end

end

john = Dog.new
zebra = Animal.new

john.speak
john.eat
john.number_of_legs
zebra.speak
john.common_traits
