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
    @@genres << genre
    @@artists << artist
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
    genre_hash = {}
    stag_value = 1
    @@genres.map do |value|
      if genre_hash[value]
        incremented_value = stag_value + 1
        genre_hash[value] = incremented_value
      else
        genre_hash[value] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    stag_value = 1
    @@artists.map do |value|
      if artist_hash[value]
        incremented_value = stag_value + 1
        artist_hash[value] = incremented_value
      else
        artist_hash[value] = 1
      end
    end
    artist_hash
  end
end
