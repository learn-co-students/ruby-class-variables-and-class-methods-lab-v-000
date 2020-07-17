class Song

attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
          @name = name
          @artist = artist
          @genre = genre
          @@count += 1
          @@artists << artist
          @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        new_array = [] #return array of genres with no duplicates
        @@genres.each do |index|
            unless new_array.include?(index)
                new_array << index
            end
        end
        new_array
    end

    def self.artists
      new_array = [] #return array of genres with no duplicates
      @@artists.each do |index|
          unless new_array.include?(index)
              new_array << index
          end
      end
      new_array
    end

    def self.genre_count
      count_hash = {}
      @@genres.each do |index|
          if count_hash.key?(index)
            count_hash[index] += 1
          else
            count_hash[index] = 1
          end
      end
      count_hash
    end

    def self.artist_count
      artist_hash = {}
      @@artists.each do |index|
          if artist_hash.key?(index)
            artist_hash[index] += 1
          else
            artist_hash[index] = 1
          end
      end
      artist_hash
    end

end
