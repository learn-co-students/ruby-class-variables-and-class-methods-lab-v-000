require 'pry'

class Song
# produce individual songs, each with name, artist, genre.
# keep track of the number of songs created.

@@count = 0
@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@genres << genre
    @@artists << artist
    @@count += 1
end

def self.count
  @@count
end

def self.genres
# Song class should show us all of the genres of existing songs:
# Song.genres  => ["Rap", "Pop"]
  @@genres.uniq
end

def self.artists
# Song class should show us all of the artists of existing songs:
# Song.artists  => ["Jay-Z", "Drake", "Beyonce"]
  @@artists.uniq
end


def self.genre_count
# Song.genre_count  {"rap" => 5, "rock" => 1, "country" => 3}

# this is like the artist_count below, we do not need to explicitly return the hash at the end

  @@genres.each_with_object({}) do |the_genre, genre_hash|
    genre_hash[the_genre].nil? ? genre_hash[the_genre] = 1 :  genre_hash[the_genre]  += 1
  end

end

def self.artist_count
# Song.artist_count   => {"Beyonce" => 17, "Jay-Z" => 40}

# this is like the genre_count above, but instead of each_with_object we have to explicitly return the hash

  artist_hash = {}

  @@artists.each { |the_artist| artist_hash[the_artist].nil? ? artist_hash[the_artist] =1 : artist_hash[the_artist] += 1 }

  artist_hash
end

end



