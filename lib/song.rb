class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

      def initialize(name, artist, genre)
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
        @@genres.uniq
      end

      def self.artists
         @@artists.uniq
      end

      def self.genre_count
      genres_count = Hash.new(0)

      @@genres.each do |value|
        genres_count[value] += 1
      end
      genres_count

    end


      def self.artist_count
        artists_count = Hash.new(0)

        @@artists.each do |value|
          artists_count[value] += 1
        end
        artists_count
      end

end
