class Song

  attr_accessor :name, :artist, :genre

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

  def self.count
   @@count
  end

  def self.genres
  target = @@genres.uniq
    return target
  end

  def self.artists
    new_artists = @@artists.uniq
  end

  def self.genre_count
    b = Hash.new(0)
    @@genres.each do |v|
      b[v] += 1
    end
    return b
  end

  def self.artist_count
    c = Hash.new(0)
    @@artists.each do |v|
      c[v] += 1
    end
    return c
  end

end
