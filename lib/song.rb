require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  attr_reader :count

  @@count = 0
  @@genres = Array.new
  @@artists = Array.new
  SONGS = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist


    if @@genre_count.has_key?(genre) && SONGS.include?(@name) == false
      @@genre_count[genre] += 1
      @@artist_count[artist] += 1
    elsif SONGS.include?(@name) == false
      @@genre_count[genre] = 1
      @@artist_count[artist] = 1
    end



    SONGS << @name

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    #{"rap" => 5, "rock" => 1, "country" => 3}
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end
end

binding.pry