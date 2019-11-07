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
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    genres = []
    @@genres.each do |style|
      if !genres.include?(style)
        genres << style
      end
    end
    genres
  end

def self.genre_count
  counts = Hash.new 0
  @@genres.collect do |genre|
    if counts[genre]
      counts[genre]  += 1
    else
      counts [genre] = 1
    end
  end
  counts
end


def self.artist_count
  counts = Hash.new 0
  @@artists.collect do |artist|
    if counts[artist]
      counts[artist] += 1
    else
      counts[artist] = 1
    end
  end
  counts    
end

end
