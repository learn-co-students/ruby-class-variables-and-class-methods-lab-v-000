require "pry"
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []


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
    gen = []
    @@genres.map {|g| gen << g unless gen.include?(g)}
    gen
  end

  def self.artists
    art = []
    @@artists.map {|a| art << a unless art.include?(a)}
    art
  end

  def self.genre_count
    g_hash = {}
    @@genres.each{|g| g_hash[g] = @@genres.count(g)}
    g_hash
  end

  def self.artist_count
    a_hash = {}
    @@artists.each{|a| a_hash[a] = @@artists.count(a)}
    a_hash
  end

end
