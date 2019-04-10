class Song
attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    genre_counts = {}
    @@genres.each do |genre|
      genre_counts[genre] = @@genres.count(genre)
    end
    genre_counts
  end

  def self.artist_count
    artist_counts = {}
    @@artists.each do |artist|
      artist_counts[artist] = @@artists.count(artist)
    end
    artist_counts
  end
end