class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
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
    @@genres.each {|i| @@genre_count[i] = @@genres.count(i)}
    @@genre_count
  end

  def self.artist_count
    @@artists.each {|i| @@artist_count[i] = @@artists.count(i)}
    @@artist_count
  end

end
