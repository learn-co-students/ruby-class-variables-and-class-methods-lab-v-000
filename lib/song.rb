class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end

  def self.count #Class method that returns the count of songs
    @@count
  end

  def self.genres #Class method that returns all the unique genres of the songs
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|key| genre_count[key] +=1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|key| artist_count[key] +=1}
    artist_count
  end
end
