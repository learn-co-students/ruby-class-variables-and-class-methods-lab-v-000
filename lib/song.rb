require "pry"
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
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
    num_of_genre = {}
    @@genres.each do |each_genre|
      if num_of_genre[each_genre]
        num_of_genre[each_genre] += 1
      else
        num_of_genre[each_genre] = 1
      end
    end
    num_of_genre
  end

  def self.artist_count
     num_of_artists = {}
     @@artists.each do |each_artist|
       if num_of_artists[each_artist]
          num_of_artists[each_artist] += 1
        else
          num_of_artists[each_artist] = 1
       end
     end
     num_of_artists
   end
end
