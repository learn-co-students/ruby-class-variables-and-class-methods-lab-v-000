class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist 
    @@genres << genre
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
    gcount = {}
    @@genres.uniq.each do |genre|
      gcount[genre] = @@genres.select{|i| genre == i}.count
    end
    gcount
  end
  
  def self.artist_count
    acount = {}
    @@artists.uniq.each do |artist|
      acount[artist] = @@artists.select{|i| artist == i}.count
    end
    acount
  end
  
end