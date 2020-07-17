class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count +=1
        @@genres << genre
        @@artists << artist
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        x = {}
        self.genres.each do |item|
            y = @@genres.select {|newItem| newItem==item}
            x[item] = y.length
        end
        x
    end

    def self.artist_count
        x = {}
        self.artists.each do |item|
            y = @@artists.select {|newItem| newItem==item}
            x[item] = y.length
        end
        x
    end

end
