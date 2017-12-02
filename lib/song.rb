
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.genres
    @@genres.uniq!
    return @@genres
  end

  def self.artists
    @@artists.uniq!
    return @@artists
  end

  def self.genre_count
    count_genre = {}
    @@genres.each do |r|
      if count_genre[r] == nil
        count_genre[r] = 1
      else
        count_genre[r] += 1
      end
    end
    return count_genre
  end

  def self.artist_count
    count_artist = {}
    @@artists.each do |t|
      if count_artist[t] == nil
        count_artist[t] = 1
      else
        count_artist[t] += 1
      end
    end
    return count_artist
  end
end
