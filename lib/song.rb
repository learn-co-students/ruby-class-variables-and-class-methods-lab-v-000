class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @genres = []
  @genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def count
    @@count
  end

  def genres
  end

end
