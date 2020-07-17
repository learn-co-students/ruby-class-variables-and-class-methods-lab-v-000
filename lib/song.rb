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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    result = {}
    genre_uniq = @@genres.uniq

    genre_uniq.map { |e| result[e] = 0 }

    @@genres.map { |g| result[g] += 1 }
    result
  end

  def self.artist_count
    result = {}
    artists_uniq = @@artists.uniq

    artists_uniq.map { |e| result[e] = 0 }
    @@artists.map { |g| result[g] += 1 }
    result
  end
end
