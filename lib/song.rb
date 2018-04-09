class Song
   attr_accessor :name, :artist, :genre
  
     @@count = 0
     
   def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
   end
 
   def self.count
     @@count
   end
   
    @@genres = []
   
   def self.genres
      @@genres.uniq
   end
  
   def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, genres| total[genres] += 1 ;total}
   end 
  
    @@artists = []
  
   def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, artists| total[artists] += 1 ;total}
   end
  
   def self.artists
    @@artists.uniq
   end
end