require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
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
    genre_count = {}  #{rap: 2, folk: 1}
    @@genres.each do |genre|  #@@genres = [rap, folk, rap, pop, jazz]      |genre| == "rap"
      if genre_count.has_key?(genre)     #IF genre_count does not yet have a key for this genre, create it
        genre_count[genre] += 1  #IF genre_count DOES have a key for this genre, add 1 to the count
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.has_key?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
