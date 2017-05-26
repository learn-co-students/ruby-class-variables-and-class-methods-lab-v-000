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
    genres = {}
    @@genres.each { |e| genres[e] ? genres[e] += 1 : genres[e] = 1 }
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each { |e| artists[e] ? artists[e] += 1 : artists[e] = 1 }
    artists
  end

end
