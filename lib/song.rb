require 'pry'

class Song
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    
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

  # def self.genre_count
  #   @@genres.count
  #   h = Hash[@@genres.map { |k| [k, ""]}]
    
  #   # @@genres.each { |n| t = @@genres.count(n)}
    
  #   binding.pry
  # end
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if !hash.key?(genre)
        hash[genre] = 1
        elsif hash.key?(genre)
        hash[genre] += 1
      end
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if !hash.key?(artist)
        hash[artist] = 1
        elsif hash.key?(artist)
        hash[artist] += 1
      end
    end
    hash
  end

end

# Song.new("Rage", "Joe", "reggae")
# Song.new("Sad", "Jeff", "reggae")
# Song.new("Blue", "Bob", "blues")
# Song.new("Green", "Tim", "blues")
# Song.genre_count