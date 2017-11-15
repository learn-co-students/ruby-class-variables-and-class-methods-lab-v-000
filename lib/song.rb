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

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    g = {}
    @@genres.each do |genre|
      g[genre] = 0 if g[genre].nil?
      g[genre] = g[genre] + 1
    end
    g
  end

  def self.artist_count
    a = {}
    @@artists.each do |artist|
      a[artist] = 0 if a[artist].nil?
      a[artist] = a[artist] + 1
    end
    a
  end

end
