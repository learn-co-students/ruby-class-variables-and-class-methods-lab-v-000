class Song
  attr_reader :name, :artist, :genre

  @@artists = Array.new
  @@genres = Array.new
  @@genre_count = Hash.new
  @@artist_count = Hash.new

  @@count = 1

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count +=1

    @@artists << @artist
    @@genres << @genre
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
