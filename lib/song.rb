class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

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
      unique_array = @@artists.uniq
      unique_array
    end

    def self.genres
      @@unique_genre_array = @@genres.uniq
      @@unique_genre_array
    end

    def self.genre_count
      genre_count = {}

      @@genres.each do |genre| # ["pop","pop","rock","rap"]
        # check if genre_count[i] exists
        # if not, set it equal to 1
        if genre_count[genre].nil?
          genre_count[genre] = 1
        else genre_count[genre] += 1 # genre_count["pop"] += 1
        end
      end
      genre_count
    end

    def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
        if artist_count[artist] == nil
          artist_count[artist] = 1
        else artist_count[artist] += 1
        end
      end
      artist_count
    end
end
