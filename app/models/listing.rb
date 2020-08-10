

class Listing

attr_accessor :listing_name, :city

@@all=[]

    def initialize(listing_name, city)
    @listing_name=listing_name
    @city=city
    @@all << self
    end



    def self.all
        @@all
    end


    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end




    def trip_count
    trips.count
    end

    def self.find_all_by_city (city_name)
        self.all.filter do |listing|
        listing.city == city_name
        end
    end




    def self.most_popular
      #need to cycle through the @@all array and return whatever comes back most often.
      self.all.max_by do |ele|
        ele.trip_count
      end
    end

end
