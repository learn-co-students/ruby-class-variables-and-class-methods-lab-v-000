require "pry"
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        # binding.pry
        @@genres << genre
        @@count += 1
    end

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
        count_genre = {}
        @@genres.each do |genre|
            if count_genre[genre]
              count_genre[genre] += 1
            else
              count_genre[genre] = 1 
          end 
        end
     count_genre
    end

    def self.artist_count
        count_artist = {}
        @@artists.each do |artist|
            count_artist[artist] ? count_artist[artist] += 1 : count_artist[artist] = 1
        end
        count_artist
    end
end
