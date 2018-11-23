# return an array of reversed words
def reverse_array_of_strings words
  return words.map! { |e| e.reverse }
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  # nums = [];
  # while num > 0
  #   num -= 2
  #   if num.even?
  #     nums.push(num)
  #   else
  #     nums.push(num + 1)
  #   end
  # end
  # return nums.reverse

  # OR

  arr = []

  # .. = from 0 to num (inclusive)
  # ... = from 0 to num (exclusive)
  (0...num).each do |i|
    if i.even?
      arr.push i
    end
  end
  return arr
end

# return the average of all numbers in an array
def average numbers
  sum = numbers.reduce do |total, number|
    total + number.to_f
  end
  sum /= numbers.length
  return sum
end
