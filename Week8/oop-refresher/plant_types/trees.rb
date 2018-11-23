module Tree
  class CommonTraits
    def self.growTall
      puts "All trees are perennial and can grow to more than 6m tall"
    end

    def self.woodyStem
      puts "Have woody stem, will grow"
    end
  end

  class Coniferous < CommonTraits
    def self.greenness
      puts "I remain green all year round"
    end
  end

  class Deciduous < CommonTraits
    def self.greenness
      puts "My leaves are shed once the weather turns colder and darker after summer :'("
    end
  end

end
