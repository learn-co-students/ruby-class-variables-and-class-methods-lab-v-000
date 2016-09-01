class Song
    attr_accessor:name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def self.count
        @@count
    end
    def initialize(name, artist, genre)
        @@count += 1
        @genre = genre
        @artist = artist
        @name = name
        @@genres << @genre  
        @@artists << @artist
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        @@genre_count = {}
        @@genres.each do |genre|
            if !@@genre_count.has_key?(genre)
                @@genre_count[genre] = (@@genres.count(genre))
            end
        end
        @@genre_count
    end
    def self.artist_count
        @@artist_count = {}
        @@artists.each do |genre|
            if !@@artist_count.has_key?(genre)
                @@artist_count[genre] = (@@artists.count(genre))
            end
        end
        @@artist_count
    end
end