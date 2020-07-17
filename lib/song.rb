class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count =  {}
  @@genre_count = {}

attr_accessor :name, :artist, :genre

   def initialize(s,a,g)
     @name = s
     @artist = a
     @genre = g

     @@count += 1

       if @@artist_count.keys.include?(a)
         @@artist_count[a] += 1
       else
         @@artist_count[a] = 1
       end

       if @@genre_count.keys.include?(g)
         @@genre_count[g] += 1
       else
         @@genre_count[g] = 1
       end

        @@genres << g
        @@artists << a

    
   end

   def self.count
        @@count
   end
   def self.artist_count
       @@artist_count
   end
   def self.genre_count
       @@genre_count
   end

   def self.artists   #this is for the class
       @@artist_count.keys.each { |chr|
               @@artists << chr
        }
   end
   def self.genres   #this is for the class
       @@genre_count.keys.each { |chr|
               @@genres << chr
        }
   end

end
