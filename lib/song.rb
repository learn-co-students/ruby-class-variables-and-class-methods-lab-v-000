class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    g_c = {}
    @@genres.each {|genre| g_c[genre] = @@genres.count(genre)}
    g_c
  end

  def self.artist_count
    a_c = {}
    @@artists.each {|artist| a_c[artist] = @@artists.count(artist)}
    a_c
  end

end
