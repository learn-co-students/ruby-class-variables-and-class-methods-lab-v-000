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
    @@genres = @@genres.uniq
    @@genres
  end

  def self.artists
    @@artists = @@artists.uniq
    @@artists
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      if genres_hash.include?(genre)
        genres_hash[genre] += 1
      else
        genres_hash[genre] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if artists_hash.include?(artist)
        artists_hash[artist] += 1
      else
        artists_hash[artist] = 1
      end
    end
    artists_hash
  end
end
