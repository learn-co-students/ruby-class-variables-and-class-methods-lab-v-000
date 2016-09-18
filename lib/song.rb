class Song
  attr_accessor :name, :genre, :artist
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

  def self.artist_count
    answer = {}
    @@artists.each do |artist|
      if answer[artist]
        answer[artist] += 1
      else
        answer[artist] = 1
      end
    end
    answer
  end

  def self.genre_count
    answer = {}
    @@genres.each do |genre|
      if answer[genre]
        answer[genre] += 1
      else
        answer[genre] = 1
      end
    end
    answer
  end
end

# class Song
#   attr_accessor :name, :genre, :artist
#   @@count = 0
#   @@artists = {}
#   @@genres = {}
#
#   def initialize(name, artist, genre)
#     @@count += 1
#     @name = name
#
#     if @@artists[artist]
#       @@artists[artist] += 1
#     else
#       @@artists[artist] = 1
#     end
#
#     if @@genres[genre]
#       @@genres[genre] += 1
#     else
#       @@genres[genre] = 1
#     end
#
#   end
#
#   def artist=(artist)
#     if @@artists[artist]
#       @@artists[artist] += 1
#     else
#       @@artists[artist] = 1
#     end
#   end
#
#   def genre=(genre)
#     if @@genres[genre]
#       @@genres[genre] += 1
#     else
#       @@genres[genre] = 1
#     end
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
#   def self.artist_count
#     @@artists
#   end
#
#   def self.genres
#     @@genres.keys
#   end
#
#   def self.genre_count
#     @@genres
#   end
# end
