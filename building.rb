require 'pry'

class Building
    attr_accessor :name, :number_of_tenants
    attr_reader :address

    @@all = []

    def initialize name, address, number_of_floors, number_of_tenants
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_number_of_tenants
        tenant_count = @@all.reduce(0) {total, building| total + building.number_of_tenants}

        tenant_count / @@all.count
    end

    def placard
        "The #{@name} building is located in #{@address}."
    end

    def average_number_of_tenants_per_floor
        @number_of_tenants / @number_of_floors
    end

end