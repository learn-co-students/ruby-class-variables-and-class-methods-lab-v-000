require 'pry'
class Song
  attr_accessor :name, :genre, :artist

@@count = 0
@@genres = []
@@artists = []
@@genre_hash = {}
@@artist_hash = {}
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
  @@count += 1
  @@genres << genre
  @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_hash[genre] = @@genres.count(genre)
    end
    @@genre_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_hash[artist] = @@artists.count(artist)
    end
    @@artist_hash
  end

end
