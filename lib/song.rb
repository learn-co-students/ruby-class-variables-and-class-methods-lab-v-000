class Song
  
  @@genres = []
  @@artists = []
  @@count = 0
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
    unduped_genres = []
    @@genres.each do |genre|
      if unduped_genres.include?(genre)
      else
        unduped_genres << genre
      end
    end
    unduped_genres
  end

  def self.artists
    unduped_artists = []
    @@artists.each do |artist|
      if unduped_artists.include?(artist)
      else
        unduped_artists << artist
      end
    end
    unduped_artists
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.keys.include?(genre)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash.keys.include?(artist)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
    artist_hash
  end

end