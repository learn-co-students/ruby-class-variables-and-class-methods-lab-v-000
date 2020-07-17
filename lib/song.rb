require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
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

  # def add_student(student, grade)
  #   @roster[grade] ||= []
  #   @roster[grade] << student
  # end

#Check if the hash already contains a key of a particular genre.
#If so, increment the value of that key by one, otherwise, create a new key/value pair.

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      count = 1
      if hash.key?(genre)
        count +=1
        hash[genre] = count
      else
        hash[genre] = count
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      count = 1
      if hash.key?(artist)
        count +=1
        hash[artist] = count
      else
        hash[artist] = count
      end
    end
    hash
  end

end
