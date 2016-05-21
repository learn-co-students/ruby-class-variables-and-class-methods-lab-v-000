class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

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
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |label|
      if genre_count_hash.keys.include?(label)
        genre_count_hash[label] += 1
      else
        genre_count_hash[label] = 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |label|
      if artist_count_hash.keys.include?(label)
        artist_count_hash[label] += 1
      else
        artist_count_hash[label] = 1
      end
    end
    artist_count_hash
  end
end