class NaturalMultiples
  attr_accessor :array

  def initialize
    @array = []
  end

  def divisbleBy? x, y
    x.modulo(y).zero?
  end

  def iterator startNum, endNum
    (startNum..endNum).each do |i|
      if divisbleBy?(i, 3)
        @array.push i
      elsif divisbleBy?(i, 5)
        @array.push i
      end
    end
  end

  def total
    @array.reduce(:+)
  end
end

# Make this a test next time
nats = NaturalMultiples.new
nats.iterator 1, 999
puts nats.total
