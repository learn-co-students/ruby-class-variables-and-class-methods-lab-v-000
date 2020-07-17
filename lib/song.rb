class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    count_hash = {}
    @@genres.each do |genre|
      count_hash[genre] = @@genres.count(genre)
    end
    count_hash
  end

  def self.artist_count
    count_hash = {}
    @@artists.each do |artist|
      count_hash[artist] = @@artists.count(artist)
    end
    count_hash
  end
end
