require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

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
    genres = @@genres.uniq
    genres.each {|genre|
      @@genre_count["#{genre}"] = 0
    }

    @@genres.each {|genre|
      @@genre_count["#{genre}"] += 1
    }

    @@genre_count
  end

  def self.artist_count
    artists = @@artists.uniq
    artists.each {|artist|
      @@artist_count["#{artist}"] = 0
    }

    @@artists.each {|artist|
      @@artist_count["#{artist}"] += 1
    }

    @@artist_count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist #if !@@artists.include?(artist)
    @@genres << genre #if !@@genres.include?(genre)
  end
end
