class Song

  attr_accessor :name, :artist, :genre
  @@artists = []
  @@genres = []
  @@count = 0

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
    count_genres = Hash.new(0)
    @@genres.each { |g| count_genres[g] += 1 }
    count_genres
  end

  def self.artist_count
    count_artists = Hash.new(0)
    @@artists.each { |a| count_artists[a] += 1 }
    count_artists
  end
end
