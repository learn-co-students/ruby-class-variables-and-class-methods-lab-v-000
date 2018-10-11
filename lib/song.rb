class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1 
    #@@artists += 1 
    #@@genres += 1
  end
  
  def count
    @@count
  end
  
  def artists
    @@artists << artist unless @@artists.include?(artist)
    @@artists
  end
  
  def genres
    @@genres << genre unless @@genres.include?(genre)
    @@genres
  end

  def genre_count
    @@genres.length
  end
  
  def artist_count
    
  end
end