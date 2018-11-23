class Menu

  def self.display_airports_menu

    # wait for user input
    print "(A)dd an airport?\n"
    print "Choose an option:\n"

    # return the chosen option
    gets.chomp.downcase

  end

  def self.display_terminal_menu

    print "(A)dd a terminal?\n"
    print "Choose an option:\n"

    # return the user's choice
    gets.chomp.downcase

  end

  def self.display_flights_menu

    print "(A)dd a flight?\n"
    print "Choose an option:\n"

    # get the selected flight
    gets.chomp.downcase

  end

  def self.display_options_menu

    puts `clear`
    puts "Choose an option"
    puts ""
    puts "1) list all passengers on flight"
    puts "2) add a passenger to flight"
    puts "3) remove a passenger from flight"

    # get the user's option
    option = gets.chomp.to_i

  end

  def self.clear_screen
    puts `clear`
  end

  def self.spacer
    puts "--------"
  end

end
