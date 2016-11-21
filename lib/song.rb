class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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

#You will need to check to see if the hash already contains a
#key of a particular genre. If so, increment the value of
#that key by one, otherwise, create a new key/value pair
  def self.genre_count
    @genre_count_hash = {}
    @@genres.collect do |genre_type|
      if @genre_count_hash[genre_type]
        @genre_count_hash[genre_type] += 1
      else
        @genre_count_hash[genre_type] = 1
      end
    end
    @genre_count_hash
  end

  def self.artist_count
    @artist_count_hash = {}
    @@artists.collect do |artist_name|
      if @artist_count_hash[artist_name]
        @artist_count_hash[artist_name] += 1
      else
        @artist_count_hash[artist_name] = 1
      end
    end
    @artist_count_hash
  end
end
