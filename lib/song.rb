class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genres_count = 0
  @@artists_count = 0

  def initialize(name, artist, genre)
    @@count+=1
    @@genres_count+=1
    @@artists_count+=1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
  end
  def self.count
     @@count
  end
  def self.genres
    @@genres.uniq!
   end
   def self.artists
    @@artists.uniq!
        # @@artists.uniq!.length
   end
   def self.genre_count
      my_hash={}
      i=0
      my_array=@@genres
      while i < my_array.length
           my_hash.store(my_array[i],my_array.count(my_array[i]))
           i+=1
       end
       my_hash
   end
   def self.artist_count
     my_hash={}
   i=0
   my_array=@@artists
    while i < my_array.length
      my_hash.store(my_array[i],my_array.count(my_array[i]))
      i+=1
    end
    my_hash 
   end
end
