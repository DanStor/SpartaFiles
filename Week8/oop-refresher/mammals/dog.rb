require_relative "../animal.rb"
require_relative "../animal_types/mammals.rb"

class Dog < Animal
  include Mammal

  def speak
    puts "Woof!"
  end

  def number_of_legs
    Quadruped.legs
  end

  def super_duper arg1,arg2
    puts "This is the super duper instance method from Animal.rb"
    puts "Arguments in super class: #{arg1} ----- #{arg2}"
    super
  end

end

Dog.alive
# Dog.traits
fido = Dog.new
fido.speak
fido.number_of_legs
fido.super_duper "First arg", "Second arg"
