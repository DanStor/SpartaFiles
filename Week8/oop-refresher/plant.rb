require_relative "living_organism.rb"

class Plant < LivingOrganism
  def self.traits
    puts "Plants can breate, take in nutrients, drink, photosynthesise and flower"
  end

  def breathe
    puts "Inhale CO2 and exhale O2"
  end

  def nutrients
    puts "Omnomnom (sort of)"
  end

  def drink
    puts "Sluuuurp"
  end

  def flower
    puts "I am so beautiful!"
  end

  def photosynthesise
    puts "Such sun! Much energy! Wow!"
  end

  def super_duper arg1,arg2
    puts "This is the super duper instance method from Animal.rb"
    puts "Arguments in super class: #{arg1} ----- #{arg2}"
  end

end
