class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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
    genre_hash = {}
    @@genres.each do |genre_name|
      if genre_hash[genre_name]
        genre_hash[genre_name] += 1
      else
        genre_hash[genre_name] = 1
      end
    end
    genre_hash
  end

    def self.artist_count
    artist_hash={}
    @@artists.each do |artist_name|
      if artist_hash[artist_name]
        artist_hash[artist_name] += 1
      else
        artist_hash[artist_name] = 1
      end
    end
    artist_hash
  end

end
Song.new("Lucifer", "Jay-Z", "rap" )