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
    # Map unique genres, iterate, return array of genre and count of duplicates, convert to hash
    @@genres.uniq.map { |v| [v, @@genres.count(v)] }.to_h
  end

  def self.artist_count
    # Map unique artists, iterate, return array of artist and count of duplicates, convert to hash
    @@artists.uniq.map { |v| [v, @@artists.count(v)] }.to_h
  end

end
