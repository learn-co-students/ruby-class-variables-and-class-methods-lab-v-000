
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
      @@artists.uniq!
    end

    def self.genres
      @@genres.uniq!
    end

    def self.genre_count
      @@genres.inject(Hash.new(0)) { |genre, num| genre[num] += 1; genre}
    end

    def self.artist_count
      @@artists.inject(Hash.new(0)) { |artist, num| artist[num] += 1; artist}
    end
end
