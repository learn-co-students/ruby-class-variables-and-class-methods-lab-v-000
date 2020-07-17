class Song

  attr_accessor :name, :artist, :genre
  @@count = 0 #class variable @@count. To keep track of number of new songs created from the Song class. set to 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 #increment count by 1
    @@genres << @genre #all genres of existing songs
    @@artists << @artist

  end

  def self.count #class method .count #should return total songs created
    @@count
  end

  def self.genres #class method .genres
    @@genres.uniq  #returns an array of all exsisting songs/array should contain only unique genres/no duplicates/hink what to do to implement behavior
  end#

  def self.artists #class#.artists/returns an array of all artists of existing songs/!repeats/think what to do to implement behavior
    @@artists.uniq
  end

  def self.genre_count #method#.genre_count/returns hash, where keys are names of each genre
    genre_count=Hash.new(0)
		@@genres.each {|genre| genre_count[genre]+=1 }
		genre_count
  end

  def self.artist_count
    artist_count=Hash.new(0)
		@@artists.each {|artist| artist_count[artist]+=1 }
		artist_count
  end




end
