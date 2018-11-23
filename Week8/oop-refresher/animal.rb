require_relative "living_organism.rb"

class Animal < LivingOrganism
  def self.traits
    puts "Animals can breate, eat, drink, speak and procreate"
  end

  def breathe
    puts "Inhale and exhale"
  end

  def eat
    puts "Omnomnom"
  end

  def drink
    puts "Sluuuurp"
  end

  def speak
    puts "Blah blah blah..."
  end

  def procreate
    puts "*CENSORED*"
  end

  def super_duper arg1,arg2
    puts "This is the super duper instance method from Animal.rb"
    puts "Arguments in super class: #{arg1} ----- #{arg2}"
  end

end
