class Song

  @@count = 0
  @@artists = []
  genre_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
  end

  attr_accessor :name, :artist, :genre

  def count
    @@count
  end

  def artists
    @@artist
  end

  def genres
    @@genre
  end

  def genre_count

  end

  def artist_count

  end
end
