class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre

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
    count_genre = {}
    self.genres.each do |genre|
      count_genre[genre] = @@genres.count(genre)
    end
    count_genre
  end

  def self.artist_count
    count_artist = {}
    self.artists.each do |artist|
      count_artist[artist] = @@artists.count(artist)
    end
    count_artist
    end

end
