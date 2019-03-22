class Artist

attr_accessor :name, :songs, :genres
@@all = []

def initialize
  @@all << self
end

def new_song(name, genre)
  song.new(self, name, genre)
end


def self.all
  @@all
end


end
