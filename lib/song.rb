require 'pry'
class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @song = {}
    @song = [name, artist, genre]
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @song[0]
  end

  def artist
    @song[1]
  end

  def genre
    @song[2]
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
    genre_count = {}
      self.genres.each do |genre|
        genre_count[genre] = @@genres.count{ |i| i == genre }
      end
      genre_count
  end

  def self.artist_count
    artist_count = {}
    self.artists.each do |artist|
      artist_count[artist] = @@artists.count{ |i| i == artist }
    end
    artist_count
  end

end
