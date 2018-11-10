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

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
  @@artists_count
  @@genre_count
end



# end class below
end
