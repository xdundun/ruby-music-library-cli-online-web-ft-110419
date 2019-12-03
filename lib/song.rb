class Song
  attr_accessor :name
 attr_reader :artist
  @@all = []

  def initialize(name, artist= "")
    @name = name
    #if i remove this i get more bugs!
    @artist = artist
    artist= artist
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

  def artist=(name)
    @artist = name
    artist.add_song(self)
  end

  def artist
    @artist
  end

end#end of class
