class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    new(name, artist, genre)
    @@count += 1
    @@artists << artist #if @@artists.none?{|i| i == artist}
    @@genres << genre #if @@genres.none?{|i| i == genre}
  end
  
  def new(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
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

  def self.artist_count
    artist_hash = {}
    self.artists.each{|artist| artist_hash[artist] = @@artists.count(artist)}
    artist_hash
  end

  def self.genre_count
    genre_hash = {}
    self.genres.each{|genre| genre_hash[genre] = @@genres.count(genre)}
    genre_hash
  end
end