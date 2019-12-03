class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
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

  # def artist=(name)
  #   @name = name
  # end

  def add_song(song)
    if song.artist == ""
    song.artist = self
      if !songs.include?(song)
        @songs << song
      end
    end
  end

end #end of class
