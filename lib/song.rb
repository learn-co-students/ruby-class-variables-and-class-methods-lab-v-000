require 'pry'

class Song

  @@count = 0
  @@artists = []
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
    #retunrs array of all genres of the exisiting songs
    #can't have duplicate:
    @@genres = @@genres.uniq

  end

  def self.artists
      @@artists = @@artists.uniq
  end

  def self.genre_count
    all_genres = {}
    @@genres.each {|gen|
    all_genres[gen] ? all_genres[gen] += 1 : all_genres[gen] = 1}
    all_genres

  end

    def self.artist_count
      all_artists = {}
      @@artists.each {|artist|
      all_artists[artist] ? all_artists[artist] += 1 : all_artists[artist] = 1}
      all_artists
      #iterate over @@artists array and populate a NEW hash to:
      #return the NEW hash with genre => count as its key:value pairs
      #if {}genre => count exits, add 1 to count

    end

end
