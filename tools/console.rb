require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Pry.start

driver1 = Driver.new("Baby")
driver2 = Driver.new("Silly")
driver3 = Driver.new("Oni")

passenger1 = Passenger.new("Camille")
passenger2 = Passenger.new("Martin")
passenger3 = Passenger.new("Angela")

passenger1.create_ride(driver1, "200")
passenger1.create_ride(driver2, "250")
passenger1.create_ride(driver3, "150")
passenger2.create_ride(driver1, "225")

binding.pry
"end of file"
