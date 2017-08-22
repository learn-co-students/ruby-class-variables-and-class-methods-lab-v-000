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

    @@artists << @artist
    @@genres << @genre


  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.genre_count
    counter_hash = {}
    @@genres.each do |genre|
      if counter_hash.include?(genre)
        counter_hash[genre] += 1
      else
        counter_hash[genre] = 1
      end
    end
      counter_hash
  end

  def self.artist_count
    counter_hash = {}
    @@artists.each do |artist|
      if counter_hash.include?(artist)
        counter_hash[artist] += 1
      else
        counter_hash[artist] = 1
      end
    end
    counter_hash
  end


end
