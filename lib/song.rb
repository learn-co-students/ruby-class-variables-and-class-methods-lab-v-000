
class Song 
  attr_accessor :name, :artist, :genre 
  
  
  @@count = 0 
  @@artists = [] 
  @@genres = [] 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    
    @@count += 1 
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
  @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1; total   }
  end 
  
  
  

  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  

  
end 





#class Song 
  #attr_accessor :name, :artist, :genre
  
  #@@count = 0       #class variable
  #@@artists = []    #class variable 
  #@@genres = []     #class variable 
  #def initialize(name, artist, genre )
     #@name = name    #instance variable
     
     #@artist = artist
     #@@artists << artist  
     
     #@genre = genre
     #@@genres << genre 
     
     #@@count += 1 #class variable keeping count and adds 1 to count
  #end
  
  #def self.count
    ###@@count
  #end 
  
  #def self.genres
  #@@genres.uniq 
  #end 
  
  #def self.artists 
  #@@artists.uniq
  
  #end 
  #def self.genre_count
  #genre_count = {}
  #@@genres.each do |genre|
    #if genre_count [genre]
      #genre_count[genre] +=1 
    #else 
      #genre_count[genre] = 1 
    #end 
    #end 
    #genre_count
  #end 
   
  #def self.artist_count
    #@@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  #end
  
#end 





