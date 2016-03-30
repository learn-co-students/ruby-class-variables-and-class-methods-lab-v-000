#@@ songs - track number of songs. iniatilize += 1 to it
#artists bring up the artists
#genres of all songs
#hash - artists - songs - genre for each song
#genre count - how many songs from each genre
# artist count - how many songs 

require 'pry'

class Song

@@count = 0
@@genres = []
@@artists = []
@@genre_hash = {}
@@artist_hash = {}

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)

@name = name
@artist = artist
@genre = genre  

@@count += 1
@@artists << artist
@@genres << genre
end


def self.count
  
  @@count

end

def self.genres
#flatten - for only unique
@@genres = @@genres.uniq
@@genres

end

def self.artists
  @@artists = @@artists.uniq
  @@artists
end

def self.genre_count

@@genres.each { |genre| if @@genre_hash.include?(genre) == true

@@genre_hash[genre] += 1 
else
@@genre_hash[genre] = 1 

end
}

@@genre_hash

end

def self.artist_count 

@@artists.each { |artist| if @@artist_hash.include?(artist) == true

@@artist_hash[artist] += 1 
else
@@artist_hash[artist] = 1 

end
}

@@artist_hash

end


end


