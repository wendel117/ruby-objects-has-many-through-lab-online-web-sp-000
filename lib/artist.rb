class Artist

attr_accessor :name, :songs, :genres
@@all = []

def initialize
  @name = name
  @@all << self
end

def new_song(name, genre)
  song.new(self, name, genre)
end

def songs
    song.all.select do |song|
      song.artist == self
    end
  end

def genres
end

def self.all
  @@all
end


end
