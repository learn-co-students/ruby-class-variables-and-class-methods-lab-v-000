class Song
  attr_accessor :name , :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize (song_name, artist, genre)
    @name = song_name
    @@count += 1
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
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
    genres = {}
    @@genres.each{|song| genres[song]= @@genres.count(song)}
    genres
  end
  def self.artist_count
    artists = {}
    @@artists.each{|song| artists[song]= @@artists.count(song)}
    artists
    
  end
end