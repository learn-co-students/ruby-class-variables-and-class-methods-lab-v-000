class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist

    end

    @@count = 0
    @@genres = []
    @@artists = []

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
        genres_count = {}
        @@genres.each do |genre|
            genres_count[genre] ? genres_count[genre] += 1 : genres_count[genre] = 1
        end
        genres_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            artist_count[artist] ? artist_count[artist] += 1 : artist_count[artist] = 1
        end
        artist_count 
    end


end
