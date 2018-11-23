Given("I have more than one data row in my tables") do

end

Given(/^It includes ([A-Za-z]*) and (\d*)$/) do |name, age|

end

Then(/^I can print the ([A-Za-z]*) and (\d*)$/) do |name, age|
  puts "#{name} is #{age} years old."
end
