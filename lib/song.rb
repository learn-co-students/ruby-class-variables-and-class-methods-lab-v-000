class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    gens = []
    @@genres.each do |gen|
      gens << gen if gens.include?(gen) == false
    end
    gens
  end

  def self.artists
    arts = []
    @@artists.each do |art|
      arts << art if arts.include?(art) == false
    end
    arts
  end

  def self.genre_count
    genre_hash =  {}
    @@genres.each do |gen|
      if genre_hash[gen] == nil
        genre_hash[gen] = 1
      else
        genre_hash[gen] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash =  {}
    @@artists.each do |art|
      if artist_hash[art] == nil
        artist_hash[art] = 1
      else
        artist_hash[art] += 1
      end
    end
    artist_hash
  end
end
