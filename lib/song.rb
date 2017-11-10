class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@genre_count.include?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@artist_count.include?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
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
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end
