class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 # song count

    @@artists << artist # adds artist to artists arrray
    @@genres << genre # adds genres to genre array
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genres_hash = {}
      @@genres.each do |genre|
        if genres_hash.include? (genre)
          genres_hash[genre] += 1
        else
          genres_hash[genre] = 1
        end
      end
      genres_hash
  end
  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if artists_hash.include? (artist)
        artists_hash[artist] += 1
      else
        artists_hash[artist] = 1
      end
    end
    artists_hash
  end
end
#You will need to check to see if the hash already contains a key of a particular genre.
#If so, increment the value of that key by one, otherwise, create a new key/value pair.
