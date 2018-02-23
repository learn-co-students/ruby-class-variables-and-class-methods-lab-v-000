class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << @artist
      @@genres << @genre
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

    def self.genre_count
      g_hash = {}
      num = 1

      @@genres.each do |g|
          if g_hash.has_key?(g)
            g_hash[g] += num
          else
            g_hash[g] = num
          end
      end
      g_hash
    end

    def self.artist_count
      a_hash = {}
      num = 1

      @@artists.each do |a|
        if a_hash.has_key?(a)
          a_hash[a] += num
        else
          a_hash[a] = num
        end
      end
      a_hash
    end

end # End Class
