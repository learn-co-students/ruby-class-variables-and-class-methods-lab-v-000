require 'pry'

class Song

   attr_accessor :name, :artist, :genre

   @@count = 0
   @@artists = []
   @@genres =[]


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
       arr = []
       @@artists.each {|artist| arr << artist if !arr.include?(artist)}
       arr
   end

   def self.genres
      arr = []
      @@genres.each {|genre| arr << genre if !arr.include?(genre)}
      arr
   end

   def self.genre_count
      hash = {}
      @@genres.each do |genre|
          hash.keys.include?(genre) ? hash[genre] += 1 : hash[genre] = 1
        end
      hash
   end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
           hash.keys.include?(artist) ? hash[artist] += 1 : hash[artist] = 1
        end
        hash
    end

end
