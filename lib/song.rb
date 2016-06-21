require "pry"

class Song
  
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  @@count = 0

  attr_reader :artist, :name, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
    
    if !@@genre_count.include?(@genre)
      @@genre_count[@genre] = 1
    else
      @@genre_count[@genre] += 1
    end

    if !@@artist_count.include?(@artist)
      @@artist_count[@artist] = 1
    else
      @@artist_count[@artist] += 1
    end
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genre_count
  end

  def self.count
    @@count
  end

  def self.artist_count
    @@artist_count
  end

end