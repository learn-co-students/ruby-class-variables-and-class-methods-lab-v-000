require "pry"
class Song
  @@count=0
  @@artists=[]
  @@genres=[]
  
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @@artists << artist
    
    @genre=genre
    @@genres << genre
    
    @@count+=1
  end
    
  def self.count
    @@count
  end
  
  def name=(name)
    @name=name
  end
  
  def name 
    @name
  end
  
  def artist=(artist)
    @artist=artist
  end
  
  def artist
    @artist
  end
  
  def self.artists
    artists.uniq
``end
  
  def genre=(genre) 
    @genre=genre
  end
  
  def genre
    @genre
  end
  
  def genre_count=(genre_count)
    genre_count=genre_count
  end
  
  def genre_count
    @genre_count
  end
  
  def artist_count=(artist_count)
    @artist_count=artist_count
  end
  
  def artist_count
    @artist_count
  end
  

end
