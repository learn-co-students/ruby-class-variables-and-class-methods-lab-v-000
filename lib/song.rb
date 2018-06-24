class Song

    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist #unless @@artist.include?(artist)
        @@genres << genre #unless @@genre.include?(genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
        # @@artists & @@artists returns the intersection
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        artists = {}
        @@artists.uniq.each {|e| artists[e] = @@artists.count(e)}
        artists
    end

    def self.genre_count
        genres = {}
        @@genres.uniq.each {|e| genres[e] = @@genres.count(e)}
        genres
    end
end
