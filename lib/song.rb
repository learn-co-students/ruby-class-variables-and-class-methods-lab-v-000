class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  @@count = 0
  
  @@genres = []
  
  @@artists = []
  
  def self.count
    @@count
  end
    
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |g|
      genre_hash[g] += 1
  end
  genre_hash
end
  
  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |a|
      artist_hash[a] += 1 
    end
    artist_hash
  end
  
end