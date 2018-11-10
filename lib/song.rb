require "pry"
class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count ={}
  @@genre_count = {}
 
 attr_accessor :name, :song_hash, :artist, :genre
 
 
  def initialize(song_name, artist, genre)
    @song_hash = {}
    @name = song_name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1 
  end
 
 
  def add_song(song_name, artist, genre)
    song_hash[song_name] ||= []
    song_hash[song_name] << [artist, genre]
  end
  
  
 
  def self.count #class method
    @@count
  end
  
  def self.artists
    @@artists.uniq    
  end
  
  def self.genres
    @@genres.uniq    
  end
  
  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre] 
        @@genre_count[genre] += 1 
      else 
        @@genre_count[genre] = 1
        
      #binding.pry
    end
  
  end
    @@genre_count
  end 
  
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist] 
        @@artist_count[artist] += 1 
      else 
        @@artist_count[artist] = 1
        
      #binding.pry
    end
  
  end
    @@artist_count
  end 
end
