require 'pry'
class Song

# Class Variables V V V
 @@count = 0
 @@genres = []
 @@artists = []

 ### Attributes V V V
  attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre
    end

### METHODS  V V V
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
             artist_count = {}
             @@artists.each do |artist|
               if artist_count[artist]
                 artist_count[artist] += 1
               else
                 artist_count[artist] = 1
               end
             end
             artist_count

 end


end
