class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def new(name, artist, genre)
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
    count = {}
    i = 0
    @@genres.each do |genre|
      count[genre] = i unless count.has_key?(genre)
      count[genre] += 1
    end
    count

  end

  def self.artist_count
    count = {}
    i = 0
    @@artists.each do |artist|
      count[artist] = i unless count.has_key?(artist)
      count[artist] += 1
    end
    count
  end

end