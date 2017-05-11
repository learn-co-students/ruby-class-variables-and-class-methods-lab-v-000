
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  attr_accessor :name, :artist, :genre
  

  def initialize (name, artist, genre)
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
    @@unique_song_genres = @@genres.uniq
    @@unique_song_genres
  end

  def self.artists
    @@unique_song_artists = @@artists.uniq
    @@unique_song_artists
  end

  def self.genre_count
    @@unique_song_genres.each { |genre| 
      @@genre_count[genre] = 0 }
    @@genres.each { |genre|
      @@genre_count[genre] += 1 }
    @@genre_count
  end

  def self.artist_count
    @@unique_song_artists.each { |artist|
      @@artist_count[artist] = 0 }
    @@artists.each { |artist| 
      @@artist_count[artist] += 1 }
    @@artist_count
  end
  
end
