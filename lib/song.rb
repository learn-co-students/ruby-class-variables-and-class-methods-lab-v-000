require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

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
    # @@artists.inject([]) do |memo, artist|
    #   memo << artist unless memo.include?(artist)
    #   memo
    # end
    @@artists.uniq
  end

  def self.genres
    # @@genres.inject([]) do |memo, genre|
    #   memo << genre unless memo.include?(genre)
    #   memo
    # end
    @@genres.uniq
  end

  def self.artist_count
    # @@artists.inject({}) do |memo, artist|
    #   memo[artist] ||= 0
    #   memo[artist] += 1
    #   memo
    # end
    self.artists.inject({}) do |memo, artist|
      memo[artist] = @@artists.count(artist)
      memo
    end
  end

  def self.genre_count
    # @@genres.inject({}) do |memo, genre|
    #   memo[genre] ||= 0
    #   memo[genre] += 1
    #   memo
    # end
    self.genres.inject({}) do |memo, genre|
      memo[genre] = @@genres.count(genre)
      memo
    end
  end

end

# class Song
#   @@count = 0
#   @@artists = []
#   @@genres = []
#   @@genre_count = {}
#   @@artist_count = {}
#
#   attr_accessor :name, :artist, :genre
#
#   def initialize(name, artist, genre)
#     @name = name
#     @artist = artist
#     @genre = genre
#
#     @@count += 1
#     @@artists << artist unless @@artists.include?(artist)
#     @@genres << genre unless @@genres.include?(genre)
#
#     @@artist_count[artist] ||= 0
#     @@artist_count[artist] += 1
#
#     @@genre_count[genre] ||= 0
#     @@genre_count[genre] += 1
#   end
#
#   def self.count
#     @@count
#   end
#
#   def self.artists
#     @@artists
#   end
#
#   def self.genres
#     @@genres
#   end
#
#   def self.artist_count
#     @@artist_count
#   end
#
#   def self.genre_count
#     @@genre_count
#   end
#
# end
