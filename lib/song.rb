class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end
  
  def self.genres
    @@genres
  end
  
  def self.genre_count
    genre_count_hash = {}
    ##incomplete, update this
  end
  
  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist unless @@artists.include?(artist)
  @@genres << genre unless @@genres.include?(genre)
  end
  
end