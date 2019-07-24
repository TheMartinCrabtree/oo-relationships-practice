
class Ride

    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distances_arr = all.map do |ride|
            ride.distance.to_i
        end
        total = distances_arr.inject(0) do |total, distance|
            total + distance.to_i 
        end
        return total / all.length
    end








end
