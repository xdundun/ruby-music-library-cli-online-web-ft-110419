class Artist
<<<<<<< HEAD
  extend Concerns::Findable
=======
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
<<<<<<< HEAD
    @@all.uniq
=======
    @@all
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    self.new(name)
  end

  def songs
    @songs
  end

  def add_song(song)
<<<<<<< HEAD
    if !song.artist
      song.artist = self
        if !songs.include?(song)
          @songs << song
=======
    if song.artist == ""
    song.artist = self
      if !songs.include?(song)
        @songs << song
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
      end
    end
  end

<<<<<<< HEAD
  def genres
      songs.map(&:genre).uniq
    end

=======
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
end #end of class
