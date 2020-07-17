class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    genres_list = []
    @@genres.each { |g| genres_list << g unless genres_list.include?(g) }
    genres_list
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
    artist_hash = {}
    @@artists.each do |artist_name|
      artist_hash[artist_name] = @@artists.count(artist_name) unless artist_hash[artist_name]
    end
    artist_hash
  end
end
