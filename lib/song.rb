require "pry"
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end
  def self.count
    return @@count
  end

    def self.artists
return @@artists.uniq
    end

  def self.genres
return @@genres.uniq
  end

  def self.genre_count
    results = Hash.new
    @@genres.uniq.each do |e|
  results[e] = @@genres.count(e)
end
results
  end

  def self.artist_count
    results = Hash.new
    @@artists.uniq.each do |e|
  results[e] = @@artists.count(e)
end
results
end
end
