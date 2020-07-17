class Song
  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name, artist, genre)
    @@name = name
    @@artist = artist
    @@genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def name
    @@name
  end

  def artist
    @@artist
  end

  def genre
    @@genre
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
    @@genres.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  end

  def self.artist_count
    @@artists.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  end
end
