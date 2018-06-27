class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@artist_count = {}
      # => {"Beyonce" => 17, "Jay-Z" => 40}
    @@genres = []
    @@genre_count = {}
    # {"rap" => 5, "rock" => 1, "country" => 3}
    def initialize(name, artist, genre)
      @name, @artist, @genre = name, artist, genre
      @@count += 1

      @@artists << artist
      @@genres << genre

      # would be better style to separate this into its own method
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end

      if @@genre_count[genre]
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end

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

    def self.artist_count
      @@artist_count
    end

    def self.genre_count
      @@genre_count
    end

end
