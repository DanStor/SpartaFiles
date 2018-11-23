class Person

    def name
        # create a name variable
        name = "Steve"
    end

    def age
        # create age variable here
        age = 23
    end

    def children
        # create children array here
        children = ["Chardonnay", "Krystal", "Noir", "Uggo"]

    end

    def address
        # create address hash here
        address = {
          house_number: 12,
          street: "Tacky Road",
          town: "Tacky Town",
          county: "Herefordshire",
          postcode: "HJ73 5JK",
          email_addresses: ["email1@thisaddress.com", "email2@thataddress.org"]
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond",
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end

end
