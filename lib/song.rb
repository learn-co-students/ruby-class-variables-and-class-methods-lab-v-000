class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
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
    genres_hash ||= {}
    @@genres.each do |genre|
      if genres_hash.has_key?(genre)
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artists_hash ||= {}
    @@artists.each do |artist|
      if artists_hash.has_key?(artist)
        artists_hash[artist] += 1
      else
        artists_hash[artist] = 1
      end
    end
    artists_hash
  end
end
