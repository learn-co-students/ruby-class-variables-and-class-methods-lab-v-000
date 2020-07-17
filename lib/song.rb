class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.select do |genre_name|
      hash["#{genre_name}"] = @@genres.count(genre_name)
    end
    return hash
  end

  def self.artist_count
    hash2 = {}
    @@artists.select do |artist_name|
      hash2["#{artist_name}"] = @@artists.count(artist_name)
    end
    return hash2
  end

end
