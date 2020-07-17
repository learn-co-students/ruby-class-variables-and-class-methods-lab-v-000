require 'pry'
class Song

  attr_accessor :artist, :name, :genre

  @@count = 0
  @@artists =[]
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
    genrecount = {}
    @@genres.each do |genre|
      if genrecount[genre] == nil
        genrecount[genre] = 1
      else
        genrecount[genre] += 1
      end
    end
    genrecount
  end

  def self.artist_count
    artistcount = {}
    @@artists.each do |artist|
      if artistcount[artist] == nil
        artistcount[artist] = 1
      else
        artistcount[artist] += 1
      end
    end
    artistcount
  end

end
