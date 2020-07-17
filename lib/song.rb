require 'pry'
#OK SO IN INITIALIZE IS WHERE I ASSIGN INSTANCE VARIABLES
#Ahhh Ok, so in pry the test code doesn't come through
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

      end

      def self.count
        @@count
      end

      def self.artists
        @@artists.uniq
        #OK, so I need to find a method that will allow for filtering of repeats
      end

      def self.genres
        @@genres.uniq
      end
      #Ok, so it increments every time a new song is made
      #So when using pry, just enter your own arguments to experiment with
        def self.genre_count
          genre_hash = {}
          @@genres.each do |key|
            #so this is sayin,"if genre_hash with a key of 'key' exists, execute code block"
            if genre_hash[key]
              genre_hash[key] += 1
            else
              genre_hash[key] = 1
            end
          end
          genre_hash
        end

        def self.artist_count
          artist_hash = {}
          @@artists.each do |key|
            if artist_hash[key]
              artist_hash[key] += 1
            else
              artist_hash[key] = 1
            end

          end
          artist_hash
        end
#binding.pry
      end
