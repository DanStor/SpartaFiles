# hashMethod1 = {
#   :name => 'Jack',
#   :age => 29
# }
# p hashMethod1
#
# hashMethod2 = {
#   name: 'Jack',
#   age: 29
# }
# p hashMethod2
#
# hashMethod3 = Hash.new
# p hashMethod3
#
# hashMethod4 = Hash[name: 'Jack', age: 29]
# p hashMethod4
#
# hashMethod5 = Hash[:name => 'Jack', :age => 29]
# p hashMethod5

zoo = {
  mammals: [
    {
      name: "Elephant",
      origin: "Africa/Asia",
      legs: 4
    },

    {
      name: "Polar Bear",
      origin: "Antarctica",
      legs: 4
    },

    {
      name: "Sloth",
      origin: "Central America",
      legs: 2
    }
  ]
}

# p zoo[:mammals][2][:name]

zoo[:mammals].map do |item|
  item.each do |value|
    p value
  end
end
