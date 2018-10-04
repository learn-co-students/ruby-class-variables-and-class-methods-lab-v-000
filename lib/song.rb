class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    @@count = 0

    @@artists = []

    @@genres = []

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
        @@genres.reduce({}) do |acc, curr|
            #acc -> {}

            #check to see if genre is already in hash
                #add one to the value of the genre key
            #else
                #add a new key value pair genre => 1

            # if !acc.include?(curr)
            # if !acc.has_key?(curr)

            if acc[curr]
                acc[curr] += 1
            else
                acc[curr] = 1
            end

            acc
        end
        
    end

    def self.artist_count        
        @@artists.reduce({}) do |acc, curr|
            if acc[curr]
                acc[curr] += 1
            else
                acc[curr] = 1
            end

            acc
        end
        
    end

end

