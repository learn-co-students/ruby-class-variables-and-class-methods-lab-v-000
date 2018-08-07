require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def count
    @@count
  end

  def genres
    @@genres.uniq
  end

  def artists
    @@artists.uniq
  end

  def genre_count
    @@genres.each do |genre|
      count = {}
      if count.has_key?(genre)
        count[genre] += 1
      else
        count[genre] = 1
      end
      return count
    end
  end
end
