class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@genres << @genre
    @@artists << @artist
  end
  @@count = 0
  @@genres = []
  @@artists = []
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
    i = 0
    genre_hash = {}
    while i < @@genres.length
       if !genre_hash.has_key?(@@genres[i])
          genre_hash[@@genres[i]] = 1
       else
         genre_hash[@@genres[i]]+=1
       end
       i+=1
    end
    genre_hash
  end
  def self.artist_count
    i = 0
    artist_hash = {}
    while i < @@artists.length
       if !artist_hash.has_key?(@@artists[i])
          artist_hash[@@artists[i]] = 1
       else
         artist_hash[@@artists[i]]+=1
       end
       i+=1
    end
    artist_hash
  end
end
