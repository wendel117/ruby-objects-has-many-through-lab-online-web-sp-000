class Artist

attr_accessor :name, :songs, :genres
@@all = []

def initialize
  @@all << self
end

def self.all
  @@all
end


end
