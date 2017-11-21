class Song
  attr_reader :name, :artist, :genre
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
    @unique_genres = @@genres.uniq
  end

  def self.artists
    @unique_artists = @@artists.uniq
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
