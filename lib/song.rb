require 'pry'
class Song

  @@count = 0
  @@genres = []
  @@artists = []
  genre_count = {}

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
    #uniq or uniq! returns a new array by removing duplicate values in self
    @@genres.uniq
  end

  def self.genre_count
    count = 0
    new_hash = {}
    #here we define a new hash (other than genre_count) so that when I try
    #to return the hash, I'm not invoking this method again on itself. Will
    #get stuck in a loop if I do that.
    @@genres.uniq.each do |genre|
      count = @@genres.count {|x| x == genre}
      new_hash[genre] = count
    end
    new_hash
  end

  def self.artist_count
    count = 0
    artist_count = {}
    @@artists.uniq.each do |artist|
      count = @@artists.count {|x| x == artist}
      artist_count[artist] = count
    end
    artist_count
  end


  #for each uniq genre
    #count instances the genre appears in @@genres
    #add key value pair to hash genre_count[:genre] = count



  def self.artists
    @@artists.uniq
  end


end
=begin
Avis sln:
def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end


=end
