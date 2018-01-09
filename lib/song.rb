class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = @@genres = []


  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @@artists << artist

    @genre = genre
    @@genres << genre

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

  def self.artist_count
    histogram = {}

    @@artists.each() do |artist|
      histogram[artist] ||= histogram[artist] = 0
      histogram[artist] += 1
    end

    histogram
  end

  def self.genre_count
    histogram = {}

    @@genres.each() do |genre|
      histogram[genre] ||= histogram[genre] = 0
      histogram[genre] += 1
    end

    histogram
  end
end
