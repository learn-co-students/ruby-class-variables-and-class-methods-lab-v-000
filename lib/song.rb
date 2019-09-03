class Song
  attr_accessor :name, :artist, :genre, :artists, :genres
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name 
    @genre = genre 
    @artist = artist 
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    return @@count 
  end
  
  def self.genres
    return @@genres.uniq
  end 

  def self.artists
    return @@artists.uniq 
  end 
  
  def self.genre_count
    gcount = Hash.new(0)
    @@genres.each {|genre| gcount[genre] += 1}
    return gcount 
  end 
  
    def self.artist_count
    acount = Hash.new(0)
    @@artists.each {|artist| acount[artist] += 1}
    return acount 
  end 
  
end 