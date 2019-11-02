class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
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
      genre_list = {}
      @@genres.each do |target|
        if genre_list[target] == nil
          genre_list[target] = 1

        elsif genre_list[target] == 1
          genre_list[target] += 1
        end
      end
      genre_list
    end

    def self.artist_count
      artist_list = {}
      @@artists.each do |target|
        if artist_list[target] == nil
          artist_list[target] = 1

        elsif artist_list[target] == 1
          artist_list[target] += 1
        end
      end
      artist_list
    end


end
