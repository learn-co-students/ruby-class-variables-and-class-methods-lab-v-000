class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    #populate instance variables 
    @name = name
    @artist = artist
    @genre = genre
    #populate class variables where necessary
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
  
  def self.genre_count
    genres_hash = {}
    @@genres.each do |g|
      if genres_hash.include?(g)
        genres_hash[g] += 1 
      else
        genres_hash[g] = 1 
      end
    end
    genres_hash
  end
  
  def self.artist_count
    artists_hash = {}
    @@artists.each do |a| 
      if artists_hash.include?(a) 
        artists_hash[a] += 1
      else
        artists_hash[a] = 1
      end
    end
    artists_hash
  end
  
  def self.artists
    @@artists.uniq 
  end
end