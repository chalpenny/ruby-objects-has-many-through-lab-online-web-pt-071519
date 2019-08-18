
  class Artist
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
      Song.all.select do |x| x.artist == self
      end
    end

    def new_song(name, genre)
      name = Song.new(name, self, genre)
    #  name.artist = self
    end

    def genres
      genre_list = []
      Song.all.each do |x| genre_list << x.genre
      end
    end

  end
