class Song
   attr_accessor :name, :artist, :genre
   @@count = 0
   @@artists = []
   @@genres = []

   def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      # class variables to keep track of elements
      @@count += 1
      @@genres.push(genre)
      @@artists.push(artist)
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
      genre_count = {}
      @@genres.each do |genre|
         genre_count.key?(genre) ? (genre_count[genre] += 1) : (genre_count[genre] = 1)
      end
      genre_count
   end

   def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
         artist_count.key?(artist) ? (artist_count[artist] += 1) : (artist_count[artist] = 1)
      end
      artist_count
   end
end
