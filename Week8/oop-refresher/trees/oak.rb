require_relative "../plant.rb"
require_relative "../plant_types/trees.rb"

class Oak < Plant
  include Tree

  def speak
    puts "..."
  end

  def greenery
    Deciduous.greenness
  end

  def super_duper arg1,arg2
    puts "This is the super duper instance method from Animal.rb"
    puts "Arguments in super class: #{arg1} ----- #{arg2}"
    super
  end

end

Oak.alive
# Dog.traits
brian = Oak.new
brian.speak
brian.greenery
brian.super_duper "First arg", "Second arg"
