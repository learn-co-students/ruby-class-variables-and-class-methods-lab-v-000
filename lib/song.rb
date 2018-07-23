class Song
  attr_accessor :name, :artist, :genre
  @@artists = []
  @@count = 0
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.name
    @name
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    gen = Hash.new(0)
    @@genres.each{|v| gen[v] += 1}
    gen
  end
  def self.artist_count
    art = Hash.new(0)
    @@artists.each{|v| art[v] += 1}
    art
  end
end
