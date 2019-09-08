class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
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
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genre_hash = {}
    gen_array = @@genres.sort
    gen_array.each do |gen|
      if genre_hash[gen] == nil
        genre_hash[gen] = 1
      else
        genre_hash[gen] += 1
      end
    end
    return genre_hash
  end
  def self.artist_count
    art_hash = {}
    art_array = @@artists.sort
    art_array.each do |art|
      if art_hash[art] == nil
        art_hash[art] = 1
      else
        art_hash[art] += 1
      end
    end
    return art_hash
  end
end
