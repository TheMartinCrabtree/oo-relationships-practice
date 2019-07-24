
class Passenger

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end
    
    def rides_by_passenger
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        rides_by_passenger.map do |ride|
            ride.driver 
        end
    end

    def rides 
        rides_by_passenger
    end

   

    def total_distance
        distance_arr = rides_by_passenger.map(&:distance)
        distance_arr.inject(0) do |total, distance|
            total + distance.to_i
        end

        
    end

    def create_ride(driver, distance)
        Ride.new(driver, self, distance)
    end

    def self.premium_members
        all.select do |passenger|
            passenger.total_distance > 100
        end
    end





end
