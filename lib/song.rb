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
    temp_hash = Hash.new(0)
    @@genres.each do |genre|
      temp_hash[genre] += 1
    end
    temp_hash
  end

  def self.artist_count
    temp_hash = Hash.new(0)
    @@artists.each do |artist|
      temp_hash[artist] += 1
    end
    temp_hash
  end
end
