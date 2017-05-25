class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = [] 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << @genre 
    @@artists << @artist 
    
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
    genre_count = {}
    count = 1
    @@genres.each do |i|
      if genre_count.key?(i)
        genre_count[i] = count + 1 
      else 
        genre_count[i] = count 
      end
    end 
    genre_count   
  end 

  def self.artist_count 
    artist_count = {}
    count = 1
    @@artists.each do |i|
      if artist_count.key?(i)
        artist_count[i] = count + 1 
      else 
        artist_count[i] = count 
      end
    end 
    artist_count
  end 

end 