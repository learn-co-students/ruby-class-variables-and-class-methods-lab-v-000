class Song
  @@count = 0 #keep track of numnber of new songs
  @@artists =[]
  @@genres =[]

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @@count += 1# when new song created increment the value of that variable by 1.
  @name = name# initialize
  @artist = artist# initialize
  @genre = genre# initialize

  @@artists << artist# when a new song is initialized add artists to the @@artists array all artist added
  @@genres << genre# when a new song is created add genre of song to @@genres array
end

def self.count# returns the total number of songs created.
  @@count
end

def self.genres
  @@genres.uniq
end

def self.artists
  @@artists.uniq
end

def self.genre_count
  #genre_count = Hash.new()
  genre_count = {}
  @@genres.each do |genre|
    if genre_count.include? genre
      genre_count[genre] +=1
    else
      genre_count[genre] = 1
    end
  end
  genre_count
end


def self.artist_count
 artist_count = {}
 @@artists.each do |artist|
   if artist_count.include? artist
     artist_count[artist] +=1
   else
     artist_count[artist] = 1
   end
 end
 artist_count
end

end
