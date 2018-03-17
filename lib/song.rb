class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize( name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@genres = @@genres.uniq
  end

  def count
    @@count.length
  end

  def artist
    @artist
  #  @@artists.uniq
  end

  def genres
    @@genres
  end
end
