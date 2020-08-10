


class Trip

attr_accessor :listing, :guest

@@all=[]

def initialize(listing, guest)
@guest=guest
@listing=listing
@@all << self
end

def self.all
@@all
end

end

