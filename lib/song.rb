class Song
  attr_accessor :name,:artist,:genre

  @@genres = []
  @@count = 0
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
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
    genre_counts = Hash.new(0)
    @@genres.each {|genre| genre_counts[genre] += 1}
    genre_counts
  end

  def self.artist_count
    artist_counts = Hash.new(0)
    @@artists.each {|artist| artist_counts[artist] += 1}
    artist_counts
  end

end
