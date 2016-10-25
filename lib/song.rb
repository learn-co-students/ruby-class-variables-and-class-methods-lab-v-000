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

  def self.artists
    self.artist_count.keys
  end

  def self.genres
    self.genre_count.keys
  end

  def self.genre_count
    histogram = {}
    @@genres.each do |genre|
      histogram[genre] ||= 0
      histogram[genre] += 1
    end
    histogram
  end

  def self.artist_count
    histogram = {}
    @@artists.each do |artist|
        histogram[artist] ||= 0
        histogram[artist] += 1
    end
    histogram
  end

end
