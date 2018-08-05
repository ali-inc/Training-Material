class Person

    def name
        # create a name variable
        name = 'Rob'
    end

    def age
        # create age variable here
        age  = 27
    end

    def children
        # create children array here
        children = ['a','b','c','d']
    end

    def address

        # create address hash here
        address = {
          house_number: 9,
          street: 'road',
          town: 'bham',
          county: 'WM',
          postcode: 'B1 2CD',
          email_addresses: ['a@b.com', 'c@d.com']
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end

end
