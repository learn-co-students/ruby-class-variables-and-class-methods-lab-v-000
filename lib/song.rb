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
    gen1 = Hash.new(0)
    @@genres.each do |genre|
      gen1[genre] += 1
    end
    gen1
  end

  def self.artist_count
    art1 = Hash.new(0)

    @@artists.each do |art|
      art1[art] += 1
    end
    art1
  end
end