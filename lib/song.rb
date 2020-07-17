class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @@count += 1

    @genre = genre
    @name = name
    @artist = artist

    @@genres << genre
    @@artists << artist

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
    num = Hash.new (0)
    @@genres.each do |genre|
      num[genre] += 1
    end
    num
  end

  def self.artist_count
    num = Hash.new (0)
    @@artists.each do |artist|
      num[artist] += 1
    end
    num
  end

end