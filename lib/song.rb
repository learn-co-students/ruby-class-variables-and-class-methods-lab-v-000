class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        if @@artist_count.keys.include?(artist)
            @@artist_count[artist] += 1
        else 
            @@artist_count[artist] = 1
        end
        @@genres << genre
        if @@genre_count.keys.include?(genre)
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end
    end

end