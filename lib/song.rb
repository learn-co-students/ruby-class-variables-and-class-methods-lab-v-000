class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(song_name, artist, genre)
    @name = song_name
    @genre = genre
    @artist = artist 
    
    @@count += 1 
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres.uniq 
    # I discovered #uniq on https://stackoverflow.com/questions/8365721/remove-duplicate-elements-from-array-in-ruby
  end
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genre_count 
    genre_hash = {}
    
    @@genres.each do |genre|
      genre_hash.has_key?(genre) ? genre_hash[genre] += 1 : genre_hash[genre] = 1
    end
    
    genre_hash
  end
  
  def self.artist_count # This works, but I suspect that it's hard to debug...
    artist_hash = {}
    
    self.artists.each do |artist|
      artist_hash[artist] = @@artists.count {|x| x == artist}
    end
    
    artist_hash
  end
  
end