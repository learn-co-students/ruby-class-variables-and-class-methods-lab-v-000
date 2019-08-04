class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@genres << genre
    @@artists << artist 
    
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    x = [ ]
    @@genres.map do |genre|
      if x.include?(genre) == false
        x << genre
      end
    end
    x 
  end
  
  def self.artists 
    x = [ ]
    @@artists.map do |artist|
      if x.include?(artist) == false 
        x << artist
      end
    end
    x
  end
  
  def self.genre_count
    genre_hash = { }
    
    self.genres.each do |x|
      genre_hash[x] = 0
    end
    @@genres.each do |genre|
      genre_hash[genre] += 1 
    end
    genre_hash
  end
  
   def self.artist_count
    artist_hash = { }
    
    self.artists.each do |x|
      artist_hash[x] = 0
    end
    @@artists.each do |artist|
      artist_hash[artist] += 1 
    end
    artist_hash
  end
end