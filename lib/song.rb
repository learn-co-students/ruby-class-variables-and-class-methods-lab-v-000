class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count # class method
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)

    @@genres.each {|genre| genre_count[genre] += 1}
    return genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)

    @@artists.each {|artist| artist_count[artist] += 1}
    return artist_count
  end

end
