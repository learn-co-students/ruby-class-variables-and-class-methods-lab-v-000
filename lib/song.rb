class Song

attr_accessor :name
attr_accessor :artist
attr_accessor :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

  @@count += 1
  @@genres << @genre
  @@artists << @artist

end

def self.count
  @@count
end

def self.genres
  final_genres = []
  @@genres.each do |genre|
    if !final_genres.include?(genre)
      final_genres << genre
    end
  end
  final_genres
end

def self.artists
  final_artists = []
  @@artists.each do |artist|
    if !final_artists.include?(artist)
      final_artists << artist
    end
  end
  final_artists
end

def self.genre_count
  genres = {}
  @@genres.each do |genre|
    if genres.keys.include?(genre)
      genres[genre] += 1
    else
      genres[genre] = 1
    end
  end
genres
end

def self.artist_count
  artists = {}
  @@artists.each do |artist|
    if artists.keys.include?(artist)
      artists[artist] += 1
    else
      artists[artist] = 1
    end
  end
artists
end

end
