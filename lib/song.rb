class Song

attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
      @@count
    end

    def self.genres
      @@genres.uniq!
    end

    def self.artists
      @@artists.uniq!
    end

    def self.genre_count
      genre_count = {}

      # @@genres = [rap, pop]
      @@genres.each do |genre| # genre = rap
        if genre_count[genre] # genre_count[rap] = true
          genre_count[genre] += 1  # genre_count[rap] += 1

        else #genre_count[rap] = false
          genre_count[genre] = 1 #genre_count[rap] = 1
        end
      end
      genre_count
      #if it already exists, increase by 1, if not,
      #add it with value of 1
    end

    def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
        if artist_count[artist]
          artist_count[artist] += 1

        else
          artist_count[artist] = 1
        end
      end
      artist_count
      #if it already exists, increase by 1, if not,
      #add it with value of 1
    end

end
