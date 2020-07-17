class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists << artist

    @genre = genre
    @@genres << genre

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
    hash = {}
    @@genres.each{|genre| hash[genre] = @@genres.count(genre)}
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each{|artist| hash[artist] = @@artists.count(artist)}
    hash
  end

end
