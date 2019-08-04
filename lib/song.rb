class Song
  attr_accessor :name, :artist, :genre
  #attr_reader
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@genres << genre
    @@artist << artist 
    @@name << name 
    
    @@count += 1
end

def genres
  x = [ ]
  @@genres.map do |thing|
    if thing == @genre
      x << thing
    end
    if x.length > 0 
      @@genres.delete(x[0])
    end
  end

      
  if @@genres.include?(genre).count > 1 
    @@genres.delete(genre)
  end
  
  def arists 
    if @@artists.include?(genre).count > 1 
    @@genres.delete(genre)
    
    
end