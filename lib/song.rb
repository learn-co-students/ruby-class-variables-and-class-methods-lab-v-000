class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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
  
  def self.genre_count
    @@genre_count
    @@genres.map { |x| [x, @@genres.count(x)] }.to_h
  end
  
  def self.artist_count
    @@artist_count
    @@artists.map { |x| [x, @@artists.count(x)] }.to_h
  end
end