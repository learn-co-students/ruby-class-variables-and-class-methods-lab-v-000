class Song
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << @artist
   
    
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
  @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end

  def self.artist_count
   @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
  end 
end








