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
    new_hash = {}
    counter = 1
    @@genres.each do |value|
      if new_hash[value]
        counter += 1
        new_hash[value] = counter
      else
        new_hash[value] = 1
      end
    end
    new_hash
  end

  def self.artist_count
    new_hash = {}
    counter = 1
    @@artists.each do |value|
      if new_hash[value]
        counter += 1
        new_hash[value] = counter
      else
        new_hash[value] = 1
      end
    end
    new_hash
  end

end
