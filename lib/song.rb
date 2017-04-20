
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    gen_hash = {}
    @@genres.each do |genre|
      if gen_hash.include? (genre)
        gen_hashlearn[genre] += 1
      else
        gen_hash[genre] = 1
      end
    end
    gen_hash
  end

  def self.artist_count
    art_hash ={}
    @@artists.each do |artist|
      if art_hash.include? (artist)
        art_hash[artist] += 1
      else
        art_hash[artist] = 1
      end
    end
    art_hash
  end

end
