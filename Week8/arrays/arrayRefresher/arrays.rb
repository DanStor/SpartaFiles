########## Single Arrays ##########

# singleArray = ["Steven Spielberg", "Quentin Tarantino", "George Lucas", "M. Night Shamylan"]
#
# p singleArray[1]
#
# singleArray.each do |e|
#   p
# end

########## 2D Arrays ##########

multiDArray = [
  ["Steven Spielberg", 1950, ["Jurassic Park", "E.T", "Saving Private Ryan"]],
  ["Quentin Tarantino", 1960, ["Resevoir Dogs", "Pulp Fiction", "Kill Bill"]],
  ["George Lucas", 1955, ["Star Wars", "Indiana Jones"]],
  ["M. Night Shamylan", 1970, ["Unbreakable", "The Sixth Sense", "Signs"]]
]

p multiDArray[3][1]
p multiDArray.first.first
p multiDArray.first.last[2]
