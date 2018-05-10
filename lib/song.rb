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
    #genres gimme the count of each genre
    @@genres.uniq.map{|g| [g,@@genres.count(g)]}.to_h
  end

  def self.artist_count
    @@artists.uniq.map{|a| [a,@@artists.count(a)]}.to_h
  end
end
