require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = Array.new
  @@artists = Array.new

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    #genre_count = to and empty hash
    #example:
    #[rap, rap, pop], each do |genre|
      #genre_count[rap] = [rap, rap, pop].count(rap)
    #return updated genre_count hash

    genre_count = Hash.new
    @@genres.each do |genre|
      #creating new key/value pair
      genre_count[genre] = @@genres.count(genre)
    end
    genre_count
  end

  def self.artist_count
    #the {} is the starting point for .inject in this case
    #the ";" separates the two lines of code into separate lines. the "hash" after the semicolon is simply returning the updated hash

    #the method broken down would look as follows if the @@artists array contained the following values, [jay-z, jay-z, britney]:

    #1st iteration:
    #hash = {}
    #[jay-z, jay-z, britney].inject({}) do |hash, jay-z|
      #hash[:jay-z] = [jay-z, jay-z, britney].count(jay-z); {"jay-z" => 2}

    #more on .inject: http://blog.jayfields.com/2008/03/ruby-inject.html

    @@artists.inject({}) do |hash, artist|
      #creating new key/value pair
      hash[artist] = @@artists.count(artist); hash
    end
  end

binding.pry

end