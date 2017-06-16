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
  @@genres << genre # unless @@genres.include?(genre)
  @@artists << artist # unless @@artists.include?(artist)
end

def self.count
  @@count
end

def self.genres
  unique_genres = []
  @@genres.each do |genre|
    unique_genres << genre unless unique_genres.include?(genre)
  end
  unique_genres
end

def self.artists
  unique_artists = []
  @@artists.each do |artist|
    unique_artists << artist unless unique_artists.include?(artist)
  end
  unique_artists
end

def self.genre_count
  unique_genre_count = {}
  @@genres.each do |genre|
    if unique_genre_count.keys.include?(genre)
      unique_genre_count[genre] += 1
    else
      unique_genre_count[genre] = 1
    end
  end
  unique_genre_count
end

def self.artist_count
    unique_artist_count = {}
    @@artists.each do |artist|
      if unique_artist_count.keys.include?(artist)
        unique_artist_count[artist] += 1
      else
        unique_artist_count[artist] = 1
      end
    end
    unique_artist_count
end

end
