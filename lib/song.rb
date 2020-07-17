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
    genredup = @@genres.uniq
    return genredup
  end

  def self.artists
    artistdup = @@artists.uniq
    return artistdup
  end

  def self.genre_count
    counter = {}
    @@genres.each do |genre|
      if counter.include?(genre)
        counter[genre.to_s] += 1
      else
        counter[genre.to_s] = 1
      end
    end
    return counter
  end

  def self.artist_count
    counter = {}
    @@artists.each do |artist|
      if counter.include?(artist)
        counter[artist.to_s] += 1
      else
        counter[artist.to_s] = 1
      end
    end
    return counter
  end


end