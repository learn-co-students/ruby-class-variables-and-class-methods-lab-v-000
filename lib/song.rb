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


def self.count
  @@count
end
#
def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

  def self.genre_count(genre, name)
    h = Hash[@@genres.collect { |item| [item, item.count] } ]
  end


end
