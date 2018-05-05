class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = Hash.new(0)
  @@artist_count = Hash.new(0)
  
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name
    @artist = artist
    @@artists << artist 
    @genre = genre
    @@genres << genre
  end
  
  def self.count 
    @@count
  end
  
  def self.genres
      @@genres.uniq 
end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
  end 

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
  end 
  
  
  
end