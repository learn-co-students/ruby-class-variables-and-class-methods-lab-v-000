class Song
attr_reader :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count +=1
  @@artists << artist
  @@genres << genre
end

def self.count
  @@count
end

def self.genres
  no_dup_genre =[]
  @@genres.each {|genre| no_dup_genre << genre unless no_dup_genre.include?(genre)}
  no_dup_genre
end

def self.artists
  no_dup_artist =[]
  @@artists.each {|artist| no_dup_artist << artist unless no_dup_artist.include?(artist)}
  no_dup_artist
end

def self.genre_count
  genre_counts ={}
  @@genres.each do |genre|
    genre_counts[genre] ||= 0
    genre_counts[genre]+=1
  end
  genre_counts
end

def self.artist_count
  artist_counts ={}
  @@artists.each do |artist|
    artist_counts[artist] ||= 0
    artist_counts[artist]+=1
  end
  artist_counts
end

end
