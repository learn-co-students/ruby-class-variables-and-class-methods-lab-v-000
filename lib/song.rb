class Song

  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
      @@count += 1
      @name = name

      @artist = artist
      @genre = genre

      @@genres << @genre
      @@artists << @artist
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end

    def self.genre_count
      genre_count=Hash.new(0)
      @@genres.each {|genre| genre_count[genre] +=1 }
      genre_count
    end

    def self.artist_count
      artist_count=Hash.new(0)
      @@artists.each {|artist| artist_count[artist] +=1  }
      artist_count
    end

end
