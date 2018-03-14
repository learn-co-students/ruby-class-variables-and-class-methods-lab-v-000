class Song
  attr_accessor :name, :artist, :genre
   # @@count = 0
   # @@genres = []
   # @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    # @@genres = genres
  end
  
  # def self.count
  #   @@count
  # end
  
  # def self.genres
  #   @@genres unique
  # end
  
  # def self.artists
  #   @@artists unique
  # end
  
  # def self.genre_count
  #   hash of key value pairs of genres and their count using @@genres
  # end

  # def artist_count
  #   hash of key value pairs of artists and their count using @@arists
  # end
end
