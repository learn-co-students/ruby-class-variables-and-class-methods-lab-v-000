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

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # create a new hash and set all key values to 0
    genre_count_h = Hash.new(0)
    # iterate over the genres class variable
    # create a key with each genre and increase the key value by 1
    @@genres.each {|genre| genre_count_h[genre] += 1}
    genre_count_h
  end

  def self.artist_count
    artist_count_h = Hash.new(0)
    @@artists.each {|artist| artist_count_h[artist] += 1}
    artist_count_h
  end

end
