class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    num = Hash.new(0) 
    @@genres.each { |name| num[name] += 1 }
    num
  end

  def self.artist_count
    num = Hash.new(0)
    @@artists.each {|name| num[name] += 1}
    num
  end

end