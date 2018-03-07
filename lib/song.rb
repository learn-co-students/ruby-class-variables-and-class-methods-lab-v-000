require 'pry'


class Song

  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genre_count = 0
  @@artist_count = 0
  @@genres = []
  @@artists = []
  @@genreHash = {}
  @@artistHash = {}


  def initialize(name,artist,genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @genre = genre
    @artist = artist
    @name = name
  end

  def self.count
    @@count
  end

  # attribute accessors
  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

 # returns arrays
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count

    count = 0

    @@genres.each do |genre|
      assigned = 0
      @@genreHash.each do |genreH, count|
        if genre == genreH
          count = count + 1
          @@genreHash[genreH] = count
          assigned = 1;
        end
      end

      if assigned == 0
        @@genreHash[genre] = 1
      end

    end

    @@genreHash
  end

  def self.artist_count
    count = 0

    @@artists.each do |artist|
      assigned = 0
      @@artistHash.each do |artistH, count|
        if artist == artistH
          count = count + 1
          @@artistHash[artistH] = count
          assigned = 1;
        end
      end

      if assigned == 0
        @@artistHash[artist] = 1
      end

    end

    @@artistHash
  end

end
