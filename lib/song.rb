class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  
  def initialize(name, artist, genre)
    @@count +=1
             
    @@genres << genre
 
    @@artists << artist
  end
  
  def count
    @@count
  end
  
  def artists
    self.artists
  end
  
  def genres
    self.genres
  end
  
  def genre_count
    self.genre each do |key, value|
      self[key].count
      
    end
  end
  
  def artist_count
    
  end
  
  
  
  
  
end
