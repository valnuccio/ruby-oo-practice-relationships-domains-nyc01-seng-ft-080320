

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Guests

val = Guest.new("Val")
anthony = Guest.new("Anthony")
grace = Guest.new("Grace")
gus = Guest.new("Gus")
rebecca = Guest.new("Rebecca")

#Listings

chalet = Listing.new("Charming Chalet", "France")
cabin = Listing.new("Mountain Cabin", "Catskills")
flat = Listing.new("British Flat", "London")



#Trips


val_chalet = Trip.new(chalet, val)
anthony_cabin = Trip.new(cabin, anthony)
flat = Trip.new(flat, gus)
grace_chalet = Trip.new(chalet, grace)
rebecca_chalet = Trip.new(chalet, rebecca)
val_cabin = Trip.new(cabin,val)
rebecca_cabin =Trip.new(cabin, rebecca)

binding.pry

puts "Fixed"

