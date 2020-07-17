require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}


  attr_accessor :name, :artist, :genre

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

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.genres
    newarray = []
    @@genres.each do |genres|
      if newarray.include?(genres)
      else
        newarray << genres
      end
    end
    newarray
  end

  def self.artists
    newarray = []
    @@artists.each do |artists|
      if newarray.include?(artists)
      else
        newarray << artists
      end
    end
    newarray
  end

  def self.genre_count
    newhash = {}
    @@genres.each do |genres|
      if newhash.keys.include?(genres)
        newhash[genres] += 1
      else
        newhash[genres] = 1
      end
    end
    newhash
  end

  def self.artist_count
    newhash = {}
    @@artists.each do |artists|
      if newhash.keys.include?(artists)
        newhash[artists] += 1
      else
        newhash[artists] = 1
      end
    end
    newhash
  end


end

ninety_nine = Song.new("99 Problems", "Jay-Z", "rap")
allweknow = Song.new("All We Know","Chainsmokers","pop")
stargazing = Song.new("Stargazing","Kygo","pop")

#binding.pry

Song.genres
