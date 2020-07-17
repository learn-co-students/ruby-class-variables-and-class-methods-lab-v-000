require 'pry'
class Song
  attr_accessor :name, :artist, :genre, :genre_name, :number_songs
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
    return @@count
  end

  def self.artists
    @@artists.delete_if {|a| @@artists.count(a) > 1}
  end

  def self.genres
    @@genres.delete_if {|g| @@genres.count(g) > 1}
  end

  def self.genre_count
    # Iterate through the @@genres and add each as the key and the count of each as the value
    counted_genres = {}
    #Hash[@@genres.each do |gen|
        #counted_genres[gen] = @@genres.count(gen)
    #end] #=> this passed but also gave me some errors.  wrong element type String at 0 (expected array). ignoring wrong elements is deprecated, remove them explicitly
    counted = []
    @@genres.each {|g| counted << @@genres.count(g)}
    Hash[@@genres.zip(counted).each {|a, b| counted_genres[a] = b}]
    #binding.pry
    counted_genres
  end

  def self.artist_count
    counted_artists = {}
    counted = []
    @@artists.each {|g| counted << @@artists.count(g)}
    Hash[@@artists.zip(counted).each {|a, b| counted_artists[a] = b}]
    counted_artists
  end

end
