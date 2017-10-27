class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name,:artist,:genre
  def initialize(name,artist,genre)
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

  def self.artists
    @@artists.to_set
  end

  def self.genres
    @@genres.to_set
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.to_set.sort.each{|e|
      genre_count_hash[e] = @@genres.count(e)
    }
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.to_set.sort.each{|e|
      artist_count_hash[e] = @@artists.count(e)
    }
    artist_count_hash
  end

end
