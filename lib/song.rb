class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre) #takes 3 args
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(@genre)
    @@artists.push(@artist)
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = Hash.new()

    @@genres.each do |genre|
      if genre_hash[genre]
      genre_hash[genre] += 1
    else
      genre_hash[genre] = 1
    end
  end
  genre_hash
end

def self.artist_count
  artist_hash = Hash.new()

  @@artists.each do |artist|
    if artist_hash[artist]
    artist_hash[artist] += 1
  else
    artist_hash[artist] = 1
  end
end
artist_hash
end

end
