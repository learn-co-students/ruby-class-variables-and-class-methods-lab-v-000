class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre) #adds to genre array, artists array,
      @@count += 1
      @name = name
      @artist = artist
      @genre = genre
      @@artists << @artist
      @@genres << @genre
    end


    def self.count #returns total number of songs
      @@count
    end

    def self.genres #returns array of genres, no duplicates
      output = []
        @@genres.each do |element|
          if output.include?(element) == false
            output << element
          end
        end
      output
    end

    def self.artists #returns array of unique artists (no duplicates)
      output = []
        @@artists.each do |element|
          if output.include?(element) == false
            output << element
          end
        end
      output
    end

    def self.genre_count #returns hash with keys(genre) value(number of songs)
      output = {}
        @@genres.each do |element|
          if output[element] != nil #adds to a preexisting bucket, same as earlier lab
            output[element] += 1
          else #forms buckets if that key is missing from output (first instance)
            output[element] = 1
          end
        end
        output

    end

    def self.artist_count #same thing
      output = {}
        @@artists.each do |element|
          if output[element] != nil #adds to a preexisting bucket
            output[element] += 1
          else #forms buckets
            output[element] = 1
          end
        end
        output

    end

end
