class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
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
    Hash[@@genres.group_by(&:itself).map { |genre, count| [genre, count.size] }]
  end

  def self.artist_count
    Hash[@@artists.group_by(&:itself).map { |artist, count| [artist, count.size] }]
  end
end