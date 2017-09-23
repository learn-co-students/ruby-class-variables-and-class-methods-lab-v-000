    class Song
      @@count = 0
      @@artists = []
      @@genres = []

      attr_accessor :name, :artist, :genre
      
      def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
      end
     
      def self.count
        @@count
      end

      def self.artists
        @@artists.uniq
      end

      def self.genres
        @@genres.uniq
      end

      def self.artist_count
        artist_count = {}
        
        @@artists.each do |artist| #for each element of the class variable artists
        
          if artist_count[artist] #if the value pointed to by "artist" in the artist count hash is true (exists)
            
            artist_count[artist] += 1 #add 1 to the count
          else
            artist_count[artist] = 1 #create it and set equal to 1
          end
        
        end
        artist_count
      end

      def self.genre_count
        genre_count = {}
        
        @@genres.each do |genre| #for each element of the class variable artists
        
          if genre_count[genre] #if the value pointed to by "artist" in the artist count hash is true (exists)
            
            genre_count[genre] += 1 #add 1 to the count
          else
            genre_count[genre] = 1 #create it and set equal to 1
          end
        
        end
        genre_count
      end

    end