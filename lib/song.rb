require "pry"

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    
    attr_accessor :name, :artist, :genre
    
    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
    end  
    
    def self.count
        @@count
    end
    
    def self.genres
        @@genres.uniq!
    end
    
    def self.artists
        @@artists.uniq!
    end
    
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            genre_count[genre] = @@genres.count(genre) unless genre_count.has_key?(genre)
        end
        genre_count
    end 
    
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            artist_count[artist] = @@artists.count(artist) unless artist_count.has_key?(artist)
        end
        artist_count
    end
    
end