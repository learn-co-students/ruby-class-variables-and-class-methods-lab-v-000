class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

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

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre_cat|
      if !genre_hash[genre_cat]
        genre_hash[genre_cat] = 1
      else
        genre_hash[genre_cat] = genre_hash[genre_cat] + 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artists_name|
      if !artist_hash[artists_name]
        artist_hash[artists_name] = 1
      else
        artist_hash[artists_name] = artist_hash[artists_name] + 1
      end
    end
    artist_hash
  end


end
