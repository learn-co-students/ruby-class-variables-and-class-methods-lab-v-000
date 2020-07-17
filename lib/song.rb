class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

def initialize(name, artist, genre)
  @@count +=1
  @@genres << genre
  @@artists << artist
  @name = name
  @artist = artist
  @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    genres_count = Hash.new(0)
    @@genres.each {|x| genres_count[x] += 1 }
    genres_count
  end

  def self.artist_count
    artists_count = Hash.new(0)
    @@artists.each {|x| artists_count[x] += 1}
    artists_count
  end

end