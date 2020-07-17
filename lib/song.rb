class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    
    @@count = @@count += 1
    @@genres << @genre 
    @@artists << @artist 
  end 
  
  def self.count
    return @@count 
  end 
  
  def self.genres
#new_genre = @@genres
@@genres = @@genres.uniq 
@@genres
  end 
  
  def self.artists
    #new_artists = @@artists
    @@artists = @@artists.uniq 
    @@artists
  end 
  
  def self.genre_count
    #count = 0 
    genre_hash = {}
    @@genres.each do |i|
      genre_hash[i] ||= 0 
      genre_hash[i] += 1 
    end 
    genre_hash
  end 
  
  def self.artist_count 
    artist_hash = {}
    @@artists.each do |i|
      artist_hash[i] ||= 0
      artist_hash[i] += 1 
    end
    artist_hash
  end 

end 