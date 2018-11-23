class FizzBuzz
  attr_accessor :array

  def initialize
    @array = []
  end

  def divisbleBy? x, y
    x.modulo(y).zero?
  end

  def iterator startNum, endNum
    (startNum..endNum).each do |i|
      fizzBuzzString = ""

      if divisbleBy?(i, 3)
        fizzBuzzString += "Fizz"
      end

      if divisbleBy?(i, 5)
        fizzBuzzString += "Buzz"
      end
      
      @array.push fizzBuzzString
    end
  end
end
