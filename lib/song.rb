require 'pry'
#OK SO IN INITIALIZE IS WHERE I ASSIGN INSTANCE VARIABLES
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

      def initialize(name, artist, genre)
      @@count+=1
      @name=name
      @artist=artist
      @genre=genre
      @@genres << genre
      @@artists << artist
      binding.pry
      end

      def self.count
        @@count
      end

      def self.artists
        @@artists= @@artists.uniq
        #OK, so I need to find a method that will allow for filtering of repeats
      end

      def self.genres
        @@genres = @@genres.uniq
      end
      binding.pry
      #You will need to iterate over the @@genres array and populate a hash with the
        #key/value pairs. You will need to check to see if the hash already contains a
        # key of a particular genre. If so, increment the value of that key by one, otherwise, create
        # a new key/value pair.
      def self.genre_count
        new_hash={}

        @@genres.each do |key|
        #Next step--check to see if hash contains the key



        end

      end
      #What I think I'm doing here is making a hash and populating it with keys of genre names and values of the
        #length of each genre. I may have to iterate through genres to get the lengths of each genre for key values

  end

 #You need to walk through some test code step
    # by step to make sure you get what's
    # going on
  #Be more specific when asking questions on Learn to get more accurate help
