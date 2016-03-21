class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @genre = genre
    @artist = artist
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
     genre_count = Hash.new(0) #set empty hash with default values of 0 in k/v pairs
     @@genres.each do |genre| #iterate through @@genres array
         genre_count[genre] += 1 #increment and set genre_count key of [genre] by 1
       end
     genre_count
   end

   #The challenging part of this lab is checking for duplicate genres and artists.
   #In the above, I don't need to set a counter = 0, I simply have to set increment genre_count hash
   #In the end, this acts as a counter in itself. It accounts for duplicates on the spot -
   #If [genre] already exists in the hash, then increment it by 1, (Line 34)
   #If it does not, then it will set it equal to 1. (Line 34)
   #Repeat.

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist] += 1
    end
    artist_count
  end

end
