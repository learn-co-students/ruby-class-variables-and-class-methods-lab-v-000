class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@genres << genre
    @@artists << artist 
  end
  
  def self.count 
    @@count 
  end
  
  def self.genres 
    genres = @@genres.uniq
  end
  
  def self.artists
    artists = @@artists.uniq
  end
  
  def self.genre_count
    @@genre_count = @@genres.uniq.map {|x| [x, @@genres.count(x)]}.to_h
  end
  
  def self.artist_count
    @@artist_count = @@artists.uniq.map {|x| [x, @@artists.count(x)]}.to_h  
  end 
  
end 
#arr.uniq.map { |x| [x, arr.count(x)] }.to_h