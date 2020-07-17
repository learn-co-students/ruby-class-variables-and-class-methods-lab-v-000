require "pry"
class Song
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


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

      song_sum = 0
      hash = {}

      @@genres.each{|genre|
      if @@genres.count(genre) > 1
        song_sum += 1
        hash[genre] = song_sum
      else
        song_sum = 1
        hash[genre] = song_sum
      end
  }
  hash
  end

  def self.artist_count
    song_sum = 0
    hash = {}

    @@artists.each{|artist|
    if @@artists.count(artist) > 1
      song_sum += 1
      hash[artist] = song_sum
    else
      song_sum = 1
      hash[artist] = song_sum
    end
}
hash

  end

end
