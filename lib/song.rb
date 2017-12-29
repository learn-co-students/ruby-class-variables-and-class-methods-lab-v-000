require 'pry'
class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

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
    @@genres.uniq!
  end

  def self.artists  
    @@artists.uniq!
  end

  def self.genre_count
    @@genres.each do |g|
      if @@genre_count[g] 
        @@genre_count[g] += 1
      else
        @@genre_count[g] = 1
      end 
      
    end
    @@genre_count
   #x = @@genres.each {|g| g.count}
    #@@genre_count[gen] = x
    #@@genre_count
  end

  def self.artist_count
    @@artists.each do |a|
      if @@artist_count[a]
        @@artist_count[a] += 1
      else
        @@artist_count[a] = 1
      end
    end
    @@artist_count
  end

end