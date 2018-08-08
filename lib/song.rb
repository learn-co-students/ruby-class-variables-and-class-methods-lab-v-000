class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  
  def intialize(name, artist, genre)
    @count + 1 
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres(genre)
    @@genres.include?(genre)
      return nil 
    else 
      @@genres << genre 
    end
  end
      
    
  
  
