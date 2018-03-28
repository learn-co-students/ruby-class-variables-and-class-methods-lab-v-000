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
    @@artists << artist
    @@genres << genre
    @@count += 1
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

# array.reduce(initial_val) { |previous_val, x | code }
  def self.genre_count
    @@genres.reduce({}) do |genre_count_hash, genre|
      genre_count_hash[genre] ||= 0
      # genre_count_hash[genre] = genre_count_hash[genre] + 1
      genre_count_hash[genre] += 1
      genre_count_hash
    end
  end

 def self.artist_count
   @@artists.reduce({}) do |acc, artist|
     acc[artist] ||= 0
     # genre_count_hash[genre] = genre_count_hash[genre] + 1
     acc[artist] += 1
     acc
   end
 end

end
