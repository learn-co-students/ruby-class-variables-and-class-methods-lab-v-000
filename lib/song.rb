class Song
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count +=1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
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

  attr_reader :name, :artist, :genre

  def self.genre_count
    hash = { }
    @@genres.map do |x|
        if hash[x] == nil
          hash[x] = 1
        else
          hash[x] += 1
        end
  end
  return hash
end

  def self.artist_count
    hash = { }
    @@artists.map do |x|
        if hash[x] == nil
          hash[x] = 1
        else
          hash[x] += 1
        end
  end
  return hash
end


end
