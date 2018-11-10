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
  @@artists = []
  @@genres = []
  @@artists_count = {}
  @@genre_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

# Count: Class method total number of songs in class
  def self.count
    @@count
  end

# Artists:  Class method returns array listing all artists
  def self.artists
    @@artists.uniq
  end

# Genres: Class method returns array list of all genres
  def self.genres
    @@genres.uniq
  end

# Example data:
# Song.new("Lucifer", "Jay-Z", "rap" )
# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("hit me baby one more time", "Brittany Spears", "pop")

# artists count: Class method returns hash
# => artist names as keys; count of all songs by artist as values
# iterate with #each over artists array,
#   contains each artist's name once for EACH song by that artist,
#   VALUES - make counter var to count names in iteration
#   HOW ?? KEYS  collect each unique artist name in iteration
def artists_count
  name_count = 0
  @@artists.each do |artist|

    name_count +=
end

# => genre names as keys; count of all songs in genre as values
# iterate with #each over genres array,
#   contains each genre once for EACH song in that genre
#   VALUES - make counter var to count genre type in iteration
#   HOW ?? KEYS  collect each unique genre type  in iteration
def genre_count


end

# end class below
end
