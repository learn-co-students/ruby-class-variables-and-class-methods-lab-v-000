class Song
  
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
 

  def initialize(name,artist,genre)
    @name = name
    @artist = artist 
    @genre = genre
    
    @@count +=1
    @@genres << genre
    @@artists << artist
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

  
end
