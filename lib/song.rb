class Song

      attr_accessor :name, :artist, :genre, :count


      @@count = 0
      @@artists = []
      @@genres = []
      @@genre_count = {}
      @@artist_count = {}

      def initialize(name, artist, genre)
            @@count += 1
            @name = name
            @artist = artist
            @genre = genre

            #if @@genres.include?(@genre)
                  @@genres << genre
            #end
            #if @@artists.include?(@artist)
                  @@artists << artist
            #end
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

      def self.genre_count
            # Creates a new hash by #group_by gen which is the genre number. Then #flat_map flattens by removing [] while mapping key to genre count
            Hash[*@@genres.group_by{ |gen| gen }.flat_map{ |key, gen| [key, gen.size] }]
      end

      def self.artist_count
            Hash[*@@artists.group_by{ |art| art }.flat_map{ |key, art| [key, art.size] }]


      end


 end
