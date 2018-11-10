# Song class
# can produce individual songs

# Instance methods w/ attr_accessor
#   name (song title)
#   artist
#   genre

# Class vars & methods
#   @@count -- total num songs then use to create subcounts by artist & genre
#     #initialize -- increment by 1
#   @@genres -- array UNIQUE list of all genres, add in initialize (no dupes)
#   @@artists -- array UNIQUE list of all artists (no dupes)
#   @@artists_count  hash artist => num songs by artist
#   @@genre_count hash  genre => num songs in genre

class Song
  attr_accessor  :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@artists_count = {}
  @@genre_count = {}

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
  end

# Class method: total number of songs
def self.count
  @@count
end

def self.genre_count
  @@genres.uniq.length
end


# end class below
end
