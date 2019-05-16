class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genres_hash = {}
    @@genres.collect {|genre|
    if genres_hash[genre] == nil
      genres_hash[genre] = 1
    else
      genres_hash[genre] += 1
    end
    }
    genres_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.collect {|artist|
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    }
    artist_hash
  end

end
