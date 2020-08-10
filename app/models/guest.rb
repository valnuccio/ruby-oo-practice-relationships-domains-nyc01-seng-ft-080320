
class Guest

attr_accessor :name

@@all=[]

def initialize(name)
@name=name
@@all<< self
end

def trips
Trip.all.select do |trip|
trip.guest == self
end
end

def trip_count
    trips.count
end


def listings
trips.map.uniq do |trip|
trip.listing
end
end

def self.pro_traveler
    self.all.select do |guest|
        guest.trip_count > 1
    end
end

def self.find_all_by_name (name)
    self.all.filter do |guest|
    guest.name == name
    end
end


def self.all
@@all
end

end