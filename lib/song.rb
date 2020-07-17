class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      else
      end
    end
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if !unique_artists.include?(artist)
        unique_artists << artist
      else
      end
    end
    unique_artists
  end

  def self.genre_count
    genre_hash = {}
    
    @@genres.each do |genre|
      counter = 1
      if !genre_hash.include?(genre)
        genre_hash[genre] = counter
      else
        genre_hash[genre] = counter += 1
      end
    end
    genre_hash
  end

   def self.artist_count
    artist_hash = {}
    
    @@artists.each do |artist|
      counter = 1
      if !artist_hash.include?(artist)
        artist_hash[artist] = counter
      else
        artist_hash[artist] = counter += 1
      end
    end
    artist_hash
  end


end