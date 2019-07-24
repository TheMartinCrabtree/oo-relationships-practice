
class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end


    def select_by_driver
        Ride.all.select do |ride|
            ride.driver == self
        end.uniq
    end

    def passengers
        select_by_driver

    end

    





end