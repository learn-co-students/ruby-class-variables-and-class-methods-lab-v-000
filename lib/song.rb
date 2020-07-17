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
    @@genres << genre #if !@@genres.include? --- lesson asked to add duplicates
    @@artists << artist
  end

  #class method that returns total number of songs
  def self.count
    @@count
  end

  #class method that returns an array of all of the unique genres of existing songs
  def self.genres
    @@genres.uniq
  end

  #class method that returns an array of all of the unique artists of existing songs
  def self.artists
    @@artists.uniq
  end

  #class method that returns a hash of all genres and a count for each
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash[genre]
        genre_hash[genre] = 1
      else
        genre_hash[genre] = genre_hash[genre] + 1
      end
    end
    genre_hash
  end

##############
#This could also be solved by .group_by and .map
#https://stackoverflow.com/questions/19101167/creating-a-histogram-in-ruby
#https://stackoverflow.com/questions/3884829/ruby-how-to-group-a-ruby-array

  #class method that returns a hash of all artists and a count for each
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if !artist_hash[artist]
        artist_hash[artist] = 1
      else
        artist_hash[artist] = artist_hash[artist] + 1
      end
    end
    artist_hash
  end

end
