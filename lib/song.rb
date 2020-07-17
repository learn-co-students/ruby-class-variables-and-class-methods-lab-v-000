class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @@count+=1
    @@genres << @genre = genre
    @@artists << @artist = artist
    @name = name
  end

  def self.count
    @@count
  end

  def self.artists
     @@artists.uniq { |artist| artist }
  end

   def self.genres
     @@genres.uniq { |genre| genre }
   end

   def self.genre_count
     genres_hash = Hash.new(0)
     genres_hash.tap { |hash| @@genres.each { |genre| hash[genre] += 1 } }
   end

   def self.artist_count
     artists_hash = Hash.new(0)
     artists_hash.tap { |hash| @@artists.each { |artist| hash[artist] += 1 } }
   end
end
