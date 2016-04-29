require'pry'
class Song

# each song has a name, artist and genre
# Song class needs to show us all of our artists
# Song class needs to show us all of our genres as well
# Song class also needs to keep track of # of songs for
# each genre it creates. Return as a hash.
# Lastly. Song needs to reveal to us number of songs
# per artist.

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
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
    #returns hash where keys are names of each genre. Each
    #value to that key points to the number of songs in each
    #genre.
    genre_hash = {}
    @@genres.each do |genre|
       if genre_hash.has_key?(genre) == true
        genre_hash[genre] = genre_hash[genre] + 1
      else
       genre_hash[genre] = 1
     end
   end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.has_key?(artist) == true
        artist_hash[artist] = artist_hash[artist] + 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end


end






