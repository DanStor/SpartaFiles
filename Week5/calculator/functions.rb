def say_hello
  puts "Hello, world!"
end

def startProgram
  puts "Please choose from (b)asic or (a)dvanced functionality. Input b or a."
  input = gets.chomp
  input.downcase
  if input === "b"
    basicFunc
  elsif input === "a"
    advancedFunc
  else
    startProgram
  end
end

def basicFunc
  puts "Choose from (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision"
  input = gets.chomp
  if input === "a"
    addition
  elsif input === "s"
    subtraction
  elsif input === "m"
    multiplication
  elsif input === "d"
    division
  else
    basicFunc
  end
end

def advancedFunc
  puts "advancedFunc called"
end

def addition
  puts "Input two or more numbers to be added.\nEach following number will be added to the total."
  n = gets.chomp
  n = n.strip
  out = 0
  n.split(' ').each { |c|
    c = c.to_i
    out += c
  }
  puts out
end

def subtraction
  puts "Input two or more numbers to be subtracted.\nEach following number will be subracted from the total."
  n = gets.chomp
  n = n.split(' ')
  out = n.shift.to_i
  n.each do |i|
    out -= i.to_i
  end
  puts out
end

def multiplication
  puts "Input two or more numbers to be multiplied.\nEach following number will be multiplied by the total."
  n = gets.chomp
  out = 0
  n.split(' ').each { |c|
    c = c.to_i
    puts c
    out *= c
  }
  puts out
end

def division
  puts "Input two or more numbers to be divided.\nThe current total will be divided by the next number."
  n = gets.chomp
  out = 0
  n.split(' ').each { |c|
    c = c.to_i
    out /= c
  }
  puts out
end

startProgram
