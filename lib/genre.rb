
class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Songs.all.select do |x| x.genre == self
    end
  end

  def artists
    Artist.all.select do |x| x.genre == self
    end
  end

end
