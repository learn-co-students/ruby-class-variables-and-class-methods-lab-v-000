class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def genres
    @@genres = []
  end

  def artists
    @@artists = []
  end

  def genre_count
    @@genre_count = {}
  end
end
