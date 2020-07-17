class Song
  attr_accessor :name, :artist, :genre

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
    ret = {}
    @@genres.each do |k|
      ret.has_key?(k) ? ret[k] += 1 : ret[k] = 1
    end
    ret
  end

  def self.artist_count
    ret = {}
    @@artists.each do |k|
      ret.has_key?(k) ? ret[k] += 1 : ret[k] = 1
    end
    ret
  end

end
