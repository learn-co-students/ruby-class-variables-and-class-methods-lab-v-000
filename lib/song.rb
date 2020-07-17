# song.rb

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1 #Song.count
    # class variable, @@artists, that contains all of the artists of existing songs
    @@artists << @artist
    # class variable, @@genres, that contains all of the genres of existing songs
    @@genres << @genre
  end

  def self.count # class method returns the number of songs created
    @@count
  end

# class method that returns uniquearray of artists of existing songs
  def self.artists
    @@artists.uniq
  end


  def self.genres # class method returns unique array of genres of existing songs
    @@genres.uniq
  end

    def self.genre_count
      genre_count_hash = {}

      @@genres.each do |genre|
        if !genre_count_hash.include?(genre)
          genre_count_hash[genre] = 1
        else
          genre_count_hash[genre] += 1
        end
      end
      genre_count_hash # = { "genre" => genre_count}
    end

    def self.artist_count
      artist_count_hash = {}

      @@artists.each do |artist|
        if !artist_count_hash[artist]
          artist_count_hash[artist] = 1
        else
          artist_count_hash[artist] += 1
        end
      end
      artist_count_hash # = { "artist" => artist_count}
    end

end
