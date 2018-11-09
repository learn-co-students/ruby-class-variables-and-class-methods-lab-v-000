class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@names = []
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
  end

  def self.count
    return @@count
  end
  def self.names
  end
  def self.artists
    return @@artists.uniq!
  end
  def self.genres
    return @@genres.uniq!
  end
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each{|genre| genre_count[genre] += 1}
    return genre_count
  end
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each{|artist| artist_count[artist] += 1}
    return artist_count
  end

end
