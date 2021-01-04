class Song 

    @@count= 0
    @@artists = []
    @@genres = []

    attr_reader :name, :artist, :genre

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

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = @@genres.inject(Hash.new(0)) {|h,i| h[i] += 1; h }

        genre_count.to_a.each {|genre,count| puts "#{genre}=> #{count}" }
        return genre_count
    end

    def self.artist_count
        artist_count = @@artists.inject(Hash.new(0)) {|h,i| h[i] += 1; h }

        artist_count.to_a.each {|artist,count| puts "#{artist}=> #{count}" }
        return artist_count
    end
end
