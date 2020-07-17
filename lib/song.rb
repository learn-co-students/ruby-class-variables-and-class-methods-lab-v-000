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
    self.genres.each { |genre|
      genres[genre] = @@genres.count {|x| x == genre } }
    genres
  end

  def self.artist_count
    artists = {}
    self.artists.each { |artist|
      artists[artist] = @@artists.count {|x| x == artist } }
    artists
  end

end
