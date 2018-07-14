class Song

@@count = 0
@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @@artists << artist
  @genre = genre
  @@genres << genre
  @@count += 1
end

def new=(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
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
@@genres.each do |genre|
  if genre_count[genre]
    genre_count[genre] += 1
  else
    genre_count[genre] = 1
  end
end
genre_count
end

def self.artist_count
  artists_count = {}
  @@artists.each do |artist|
    @@artist_count[artist] = @@artists.count(artist)
end
@@artist_count
end

end #end of the class Song
