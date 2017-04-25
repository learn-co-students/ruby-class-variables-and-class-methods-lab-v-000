class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@artists << artist
      @@genres << genre

      @@count += 1
    end

    def self.count
      @@count
    end

    def self.artists
      @@artists.uniq
    end

    def self.genres
      @@genres.uniq
    end

    def genre_count
      genre_hash = {}
      self.genres.each do |genre|
          genre_hash[genre]= genre
      end
      genre_hash
    end

end
