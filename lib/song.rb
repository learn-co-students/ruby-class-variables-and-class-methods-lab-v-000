class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name,artist,genre)
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
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.uniq.each do |genre|
      genre_count[genre] = 0
    end
    @@genres.each do |genre|
      genre_count[genre] +=1
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.uniq.each do |artist|
      artist_count[artist] = 0
    end
    @@artists.each do |artist|
      artist_count[artist] +=1
    end
    artist_count
  end
end