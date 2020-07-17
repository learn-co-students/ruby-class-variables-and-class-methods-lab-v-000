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
    @@genres = @@genres.uniq
    return @@genres
  end

  def self.artists
    @@artists = @@artists.uniq
    return @@artists
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash.keys.any? { |key| key == genre }
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    return hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash.keys.any? { |key| key == artist }
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
    return hash
  end

end
