class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_hash = Hash.new(0)
  @@artist_hash = Hash.new(0)
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
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
    @@genres.each do |song|
      @@genre_hash[song] += 1
    end
    @@genre_hash
  end
  
  def self.artist_count
    @@artists.each do |song|
      @@artist_hash[song] += 1
    end
    @@artist_hash
  end
end