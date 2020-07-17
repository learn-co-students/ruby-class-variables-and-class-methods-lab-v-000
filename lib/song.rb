require 'pry'

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []
def initialize (name, artist, genre)
@name = name
@artist = artist
@genre = genre
@@count += 1
#@@count << self
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
    #genre_count = 0
    @@genres.each_with_object(Hash.new(0)) {|key, value| value[key] += 1}
  end

  def self.artist_count
@@artists.each_with_object(Hash.new(0)) {|key, value| value[key] += 1}
  end
end
