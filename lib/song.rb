class Song
     attr_accessor :name,  :artist, :genre
      
     @@count = 0
     @@genres = []
     @@artists = []
     
    

     def initialize(song_name, artist, genre)
          @name = song_name
          @artist = artist
          @genre = genre
          @@count += 1
          @@artists << artist 
          @@genres << genre
          
     end
     #this gives the number of songs created
      def self.count
           @@count
      end
      
     #this gives the number of unique genres  created
     def self.genres
           @@genres.uniq!
     end
     
     #this gives the list of unique artists created
     def self.artists
         @@artists.uniq!
     end
     
     #this gives a hash of genres the kesy are the names of each genre and the the values point to the number of songs in that genre
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
     #this method creats a hash of artists that the keys are the names of the artists and the values point to the number of songs 
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
