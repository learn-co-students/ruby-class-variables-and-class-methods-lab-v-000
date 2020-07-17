# class Song
#   attr_accessor :name, :artist, :genre
#
#   @@count = 0
#   @@artists = {}
#   @@genres = {}
#
#   def initialize(name, artist, genre)
#     @@count += 1
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@artists.has_key?(artist) ? @@artists[artist] += 1 : @@artists[artist] = 1
#     @@genres.has_key?(genre) ? @@genres[genre] += 1 : @@genres[genre] = 1
#   end
#
#   def self.count
#     @@count
#   end
#
#   def self.artists
#     @@artists.keys
#   end
#
#   def self.genres
#     @@genres.keys
#   end
#
#   def self.genre_count
#     @@genres
#   end
#
#   def self.artist_count
#     @@artists
#   end
#
# end


class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
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

  def self.artist_count
    art_hsh = {}
    @@artists.each{|x| art_hsh.has_key?(x) ? art_hsh[x] += 1 : art_hsh[x] = 1}
    art_hsh
  end

  def self.genre_count
    genre_hsh = {}
    @@genres.each{|x| genre_hsh.has_key?(x) ? genre_hsh[x] += 1 : genre_hsh[x] = 1}
    genre_hsh
  end
end
