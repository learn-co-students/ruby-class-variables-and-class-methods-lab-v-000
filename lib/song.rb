class Song 

  @@count = 0 
  @@artists = []
  @@genres = []
  @@artist_count = {} 
  @@genre_count = {}
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
  
  
  def self.artists
   @@artists.uniq
  end
  
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|(genre)
    if !genre_hash.include?(genre)
      genre_hash[genre] = 0
      end
      genre_hash[genre] += 1
    end
    return genre_hash
  end
  
  def self.artist_count
    
    artist_hash = {}
    @@artists.each do |artist|(artist)
    if !artist_hash.include?(artist)
      artist_hash[artist] = 0 
    end 
     artist_hash[artist] += 1 
   end 
   return artist_hash 
 end 

   
  
  
  
  
end
