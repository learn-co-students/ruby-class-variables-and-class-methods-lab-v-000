class Song
  @@count=0 
  @@artists=[]
  @@genres=[] 

  
  attr_accessor :name, :artist, :genre
  
  def initialize(song,artist,genre)
    @@count+=1
    @name=song
    @artist=artist
    @genre=genre
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count 
  end 
  
  def self.artists
    x=[]
    @@artists.each {|artist|
      if x.include?(artist) == FALSE
        x << artist 
      end}
    x
  end 
  
  def self.genres
    x=[]
    @@genres.each{|genre|
      if x.include?(genre) == FALSE
        x << genre
      end}
    x
  end 
  
  def self.genre_count 
    x={}
    @@genres.each { |genre|
      if x.keys.include?(genre)
         x[genre]+=1 
      else 
        x[genre]=1 
      end }
    x
  end 
  
  def self.artist_count
    x={}
    @@artists.each{ |artist|
      if x.keys.include?(artist)
        x[artist]+=1 
      else 
        x[artist]=1
      end}
    x
  end 
end