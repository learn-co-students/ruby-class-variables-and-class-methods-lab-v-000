class Song
  @@count = 0
  @@artists =[]
  @@genres = []
  attr_accessor :name, :artist, :genres



  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def genre
    @genre
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
    @@genres.each_with_index do |key,i|
      if genres_hash.has_key?(key)
        genres_hash[key] = i + 1
      else
        genres_hash[key] = 1
      end
    end
    genres_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each_with_index do |key,i|
      if artist_hash.has_key?(key)
        artist_hash[key] = i + 1
      else
        artist_hash[key] = 1
      end
    end
    artist_hash
  end


end
