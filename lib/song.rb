require 'pry'
class Song

      attr_accessor :name, :artist, :genre

      @@count = 0
      @@artists = []
      @@genres = []
      def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre

        @name = name
        @artist = artist
        @genre = genre
      end


      def self.count
        # the . count method
        #track of the number of songs that it creates.
        #return total number of songs
        @@count
      end



       def self.artists  # "self." makes it a class method.
        #https://apidock.com/ruby/Array/uniq
        # uniq a.k.a unique is a method of it own
           @@artists.uniq
       end

      #  uniq() public
      #  Returns a new array by removing duplicate values in self.
      #  If a block is given, it will use the return value of the block for comparison.

       def self.genres  # "self." makes it a class method.
        # uniq a.k.a unique is a method of it own
           @@genres.uniq
       end

      #  Need in depth explanation for 
      #      VVVVVVV below

       def self.genre_count  # "self." makes it a class method.
            hash = {} #created an empty hash
            self.genres.each do |genre|
            count = @@genres.find_all{ |g| g == genre}.length
            hash[genre] = count
            end
            hash
        end

        def self.artist_count  # "self." makes it a class method.
             hash = {} #created an empty hash
             self.artists.each do |artist|
             count = @@artists.find_all{ |a| a == artist}.length
             hash[artist] = count
             end
             hash
         end

end
