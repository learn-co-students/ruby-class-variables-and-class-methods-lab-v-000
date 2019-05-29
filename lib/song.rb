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
        @@genres.uniq
    end
    
    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        hash = @@genres.each_with_object(Hash.new(0)) do |word, freq|
            freq[word] += 1
        end
        hash
    end
    
    def self.artist_count
        hash = @@artists.each_with_object(Hash.new(0)) do |word, freq|
            freq[word] += 1
        end
        hash
    end
    
end