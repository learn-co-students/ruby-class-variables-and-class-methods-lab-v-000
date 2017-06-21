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
  @@genres = @@genres.uniq
end

def self.artists
  @@artists = @@artists.uniq
end

def self.genre_count
  genre_count = {}
  @@genres.each do |gen|
    genre_count[gen] = 0 if genre_count[gen].nil?
    genre_count[gen] = genre_count[gen] + 1
  end
    genre_count
end

def self.artist_count
    artist_count = {}
    @@artists.each do |count|
      artist_count[count] = 0 if artist_count[count].nil?
      artist_count[count] = artist_count[count] + 1
    end
      artist_count
  end
end
