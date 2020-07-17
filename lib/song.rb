class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
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
    artist_list = @@artists.uniq
    artist_list
  end

  def self.genre_count
    new_genre_hash = {}
    @@genres.each do |something|
      if new_genre_hash[something]
        new_genre_hash[something] += 1
      else
        new_genre_hash[something] = 1
      end
    end
    new_genre_hash
  end
  def self.artist_count
    new_artist_count = {}
    @@artists.each do |something|
      if new_artist_count[something]
        new_artist_count[something] += 1
      else
        new_artist_count[something] = 1
      end
    end
    new_artist_count
  end
end
