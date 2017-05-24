class Song
    @@artists = []
    @@artist_count = {}
    @@genres = []
    @@genre_count = {}
    @@count = 0

    attr_accessor :name, :artist, :genre
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
        #control for the duplicates in @@genres
        #return array of genres
        @@genres.uniq
    end

    def self.artists
        #control for the duplicates in @@artists
        #return array of artists
        @@artists.uniq
    end

    def self.genre_count
        #return hash w/ keys = names of each genre, 
        #values = count of songs in genre
        @@genres.each{ |genre|
            if @@genre_count[genre]
                @@genre_count[genre] += 1
            else
                @@genre_count[genre] = 1
            end
        }
        @@genre_count
    end

    def self.artist_count
        #return hash w/ keys = names of each artist, 
        #values = count of songs by each artist
        @@artists.each{ |artist|
            if @@artist_count.has_key?(artist)
                @@artist_count[artist] += 1
            else
                @@artist_count[artist] = 1
            end
        }
        @@artist_count
    end
end