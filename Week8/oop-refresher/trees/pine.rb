require_relative "../plant.rb"
require_relative "../plant_types/trees.rb"

class Pine < Plant
  include Tree

  def speak
    puts "..."
  end

  def greenery
    Coniferous.greenness
  end

  def super_duper arg1,arg2
    puts "This is the super duper instance method from Animal.rb"
    puts "Arguments in super class: #{arg1} ----- #{arg2}"
    super
  end

end

Pine.alive
# Dog.traits
brian = Pine.new
brian.speak
brian.greenery
brian.super_duper "First arg", "Second arg"
