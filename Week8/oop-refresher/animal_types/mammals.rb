module Mammal
  def self.common_mammal_traits
    puts "Mammals are warm-blooded and have vertebrae."
  end

  class CommonTraits
    def self.feed_young
      puts "All mammals feed their young with milk."
    end
  end

  class Biped < CommonTraits
    def legs
      puts "I have two legs"
    end
  end

  class Quadruped < CommonTraits
    def self.legs
      puts "I have four legs"
    end
  end

end

# monkey = Mammal::Biped.new
# Mammal::Quadruped.legs
# monkey.legs
