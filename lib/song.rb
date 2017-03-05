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

  def self.adding(adding)
    counts = {}
    adding.each do |item|
      counts[item] ||= 0
      counts[item] += 1
    end
    counts
  end


  def self.genre_count

    self.adding(@@genres)
    # counts = {}
    # @@genres.each do |item|
    #   counts[item] ||= 0
    #   counts[item] += 1
    # end
    # counts
  end

  def self.artist_count
    counts = {}
    @@artists.each do |item|
      counts[item] ||= 0
      counts[item] += 1
    end
    counts
  end


end
