class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
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
   @@temp_genres = []
   @@genres.each do |genre|
    if !@@temp_genres.include?(genre)
     @@temp_genres << genre
    end
  end
  @@temp_genres
 end

 def self.artists
   @@temp_artists = []
   @@artists.each do |artist|
     if !@@temp_artists.include?(artist)
       @@temp_artists << artist
     end
   end
   @@temp_artists
 end

 def self.genre_count
   @@genre_count = {}
   @@temp_genres.each do |genre|
     @@genre_count[genre] = 0
   end
   @@genres.each do |genre|
     @@genre_count[genre] += 1
   end
 @@genre_count
 end

 def self.artist_count
   @@artist_count = {}
   @@temp_artists.each do |artist|
     @@artist_count[artist] = 0
   end
   @@artists.each do |artist|
     @@artist_count[artist] += 1
   end
 @@artist_count
 end

end
