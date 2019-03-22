class Genre

  attr_reader :name, :song, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    ##new_song, that takes in an argument of a name and an artist and creates a new song. That song should know that it belongs to the genre.
    Song.new(name, self, artist)
  end

  def songs
    ##songs, that iterates through all songs and finds the songs that belong to that genre
    Songs.all.select do |song_instance|
      song_instance.genre == self
    end
  end

  def appointments
    #that iterates through the appointments array and returns appointments that belong to the patient.
    Appointment.all.select do |appointment_instance|
        appointment_instance.patient == self
    end
  end

  def artists
    #an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
      .map do |song_instance|
        song_instance.artist
      end
  end

  #this methis is in solution, but not lesson
  # def add_songs(song)
  #   self.songs << song
  # end

end
