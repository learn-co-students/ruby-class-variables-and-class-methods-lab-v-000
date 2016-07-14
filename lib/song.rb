class Song
    @@count = 0
    @@genres = []
    @@artists = []


    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
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

        #creates a hash from the genres array that will use the genres as key that points to number of occurances of songs for each genre

         @gen_song_count = Hash.new 0  # creates hash that will have genre as key and number of occurances of the songs for each one
         @@genres.each do |genre|
             @gen_song_count[genre] += 1
         end

         return @gen_song_count

    end

    def self.artist_count
        # creates hash that will have the artists from artists array as keys and occurances of each artist as values
        @artist_hash = Hash.new 0
        @@artists.each do |artist|
            @artist_hash[artist] += 1
        end
        return @artist_hash
    end

end
