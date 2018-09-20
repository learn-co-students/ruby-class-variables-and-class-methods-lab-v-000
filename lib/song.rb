class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @genre = genre
    @artist = artist
  end
  
  def self.count
    @@count
  end
  
  def self.genre 
    @@genres = []
    @@genres.include?(genre)
  end
  
  def self.artists
    @@artists = []
    @@artists.include?(artist)
  end
end