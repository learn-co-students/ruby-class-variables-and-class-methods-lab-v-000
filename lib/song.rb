require 'pry'
class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end

  attr_accessor :name, :artist, :genre

  @@count = 0

  def self.count
    @@count
  end


  @@genres = []

  def self.genres
    @@genres.uniq
  end
  @@artists = []

  def self.artists
    @@artists.uniq
  end

  @@genre_count = {}

  def self.genre_count
    @@genres.each do |gen|
      @@genre_count[gen] ||= @@genres.count(gen)
    end
    return @@genre_count
  end

  @@artist_count = {}

  def self.artist_count
    @@artists.each do |art|
      @@artist_count[art] ||= @@artists.count(art)
    end
  return @@artist_count
  end
end
