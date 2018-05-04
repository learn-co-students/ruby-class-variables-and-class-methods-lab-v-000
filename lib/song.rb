class Song

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

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    artists = @@artists.uniq
    artists
  end

  def self.genres
    genres = @@genres.uniq
    genres
  end

end
