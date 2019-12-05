class Genre
<<<<<<< HEAD
  extend Concerns::Findable
=======
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
  attr_accessor :name
  @@all = []

  def initialize(name)
      @name = name
<<<<<<< HEAD
      @songs = []
=======
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
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

<<<<<<< HEAD

    def songs
      @songs
    end

    def artists
      songs.map(&:artist).uniq
     end


=======
>>>>>>> 6e47f14bf027e20e61590c622ee751a9865e26cb
end #end of class
