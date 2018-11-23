require_relative "snowman.rb"

# name, age, accessories
snow1 = Snowman.new "Ice T", 12
snow1.say_name
snow1.description

snow2 = Snowman.new "David Snowie", 3
snow2.description

snow3 = Snowman.new "William Flake", 6
Snowman.add_accessory "shoes"
snow3.description
