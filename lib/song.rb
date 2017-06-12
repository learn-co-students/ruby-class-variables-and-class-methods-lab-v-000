class Song
  attr_accessor :artist, :name, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
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

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_counts = {}
    @@artists.each do |artist|
      artist_counts.has_key?(artist) ? artist_counts[artist] +=1 : artist_counts[artist] = 1
    end
    artist_counts
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_counts = {}
    @@genres.each do |genre|
      genre_counts.has_key?(genre)? genre_counts[genre] +=1 : genre_counts[genre] = 1
    end
    genre_counts
  end



end
