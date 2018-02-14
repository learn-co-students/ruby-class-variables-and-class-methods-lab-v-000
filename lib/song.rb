require'pry'

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
    genre_hash = {}
    num_of_this_genre = 0
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] = num_of_this_genre += 1
      else
        num_of_this_genre = 0
        genre_hash[genre] = num_of_this_genre
        genre_hash[genre] = num_of_this_genre += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    num_of_this_artist = 0
    @@artists.each do |artist|
      if artist_hash.has_key?(artist)
        artist_hash[artist] = num_of_this_artist += 1
      else
        num_of_this_artist = 0
        artist_hash[artist] = num_of_this_artist
        artist_hash[artist] = num_of_this_artist += 1
      end
    end
    artist_hash
  end

end
