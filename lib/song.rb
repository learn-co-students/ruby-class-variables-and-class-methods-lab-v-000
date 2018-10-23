class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  @@count = 0
  
  @@genres = []
  
  @@artists = []
  
  def self.count
    @@count
  end
    
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    genre_hash = {}
  end
  
end