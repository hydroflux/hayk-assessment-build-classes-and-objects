require 'pry'

class Building
    attr_accessor :name, :number_tenants
    attr_reader :address

    @@all_buildings = []
    
    @@total_tenants = 0
    @@building_count = 0

    # Initializes with a name, address, number of floors, and number of tenants
    def initialize name, address, number_floors, number_tenants
        @name = name
        @address = address
        @number_floors = number_floors
        @number_tenants = number_tenants

        @@all_buildings << self

        @@total_tenants += number_tenants
        @@building_count += 1
    end

    # Class Methods
    def self.building_count
        @@building_count
    end

    def self.average_tenants
        @@total_tenants / @@building_count
    end

    # Instance Methods
    def building_placard
        @name + ' - ' + @address
    end

    def average_tenants_floor
        @number_tenants / @number_floors
    end

end

foo = Building.new("FooBar", "1800 FooBar Street", 10, 500)
bar = Building.new("BananaRama", "2900 E Syntax Ave", 45, 1000)
alt = Building.new("", "3300 Allegory Avenue", 20, 2000)

binding.pry
0