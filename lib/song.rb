class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
  end

  def count
    @@count
  end

  def genres
    unique_genres = @@genres.uniq
  end

  def artists
    unique_artists = @@artists.uniq
  end


end
