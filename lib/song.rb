require 'pry'

class Song


    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
    @@genre_count = {}

    def initialize (name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        unless @@artist_count.keys.include?(artist)
            @@artist_count["#{artist}"] = 0
        end
        @@artist_count["#{artist}"] += 1
        unless @@genre_count.keys.include?(genre)
            @@genre_count["#{genre}"] = 0
        end
        @@genre_count["#{genre}"] += 1
    end

    def Song.count
        @@count
    end

    def Song.artists
        @@artists.uniq
    end

    def Song.genres
        @@genres.uniq
    end

    def Song.genre_count
        hash = {}
        genres.each do |genre|
            count = 0
            @@genres.each do |member|
                if member == genre
                    count += 1
                end
            end
            hash["#{genre}"] = count
        end
        hash
    end

    def Song.artist_count
        hash = {}
        artists.each do |artist|
            count = 0
            @@artists.each do |member|
                if member == artist
                    count += 1
                end
            end
            hash["#{artist}"] = count
        end
        hash
    end

end
