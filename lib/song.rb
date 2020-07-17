class Song 
  attr_reader :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @@artists << @artist = artist 
    @@genres << @genre = genre
    
    @@count += 1 
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
    genre_hash = {}
    @@genres.each do |a|
      if genre_hash[a]
        genre_hash[a] += 1 
      else
        genre_hash[a] = 1
      end
    end
    genre_hash
  end
  
 def self.artist_count
    artist_hash = {}
    @@artists.each do |a|
      if artist_hash[a]
        artist_hash[a] += 1 
      else
        artist_hash[a] = 1
      end
    end
    artist_hash
  end
  
end