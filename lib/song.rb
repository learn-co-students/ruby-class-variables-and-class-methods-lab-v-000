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
  @@genres << genre
  @@artists << artist
end

def self.count
  @@count
end

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  genre_hash = {}
  genre_hash = @@genres.group_by {|genre| genre}.map {|genre, num| [genre, num.length]}.to_h
  #Hash[@@genres.group_by{|x|x}.map{|g,num| [g, @@genres.size] }]
end

def self.artist_count
  artist_hash = {}
  artist_hash = @@artists.group_by {|artist| artist}.map {|artist, num| [artist, num.length]}.to_h
end
end
