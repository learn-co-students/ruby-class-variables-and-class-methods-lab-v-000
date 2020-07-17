class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}


  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre

    @name = name
    @artist = artist
    @genre = genre
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
    self.genres.each{|i| @@genre_count[i] = @@genres.count(i)}
    @@genre_count
  end

  def self.artist_count
    self.artists.each{|i| @@artist_count[i] = @@artists.count(i)}
    @@artist_count
  end

end
