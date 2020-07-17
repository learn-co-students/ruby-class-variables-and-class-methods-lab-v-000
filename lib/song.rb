require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@songs = []
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
    if !@@songs.include?(name)
      if @@genre_count.key?("#{genre}")
        @@genre_count["#{genre}"] += 1
      else
        @@genre_count["#{genre}"] = 1
      end
      if @@artist_count.key?("#{artist}")
        @@artist_count["#{artist}"] += 1
      else
        @@artist_count["#{artist}"] = 1
      end
    end
    @@songs << name
    #binding.pry
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
