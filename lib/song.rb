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
    @@genres << @genre 
    @@artists << @artist 
  end
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.each_with_object([]) do |gen, arr|
      arr << gen unless arr.include?(gen)
    end 
  end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
    hash = {}
    #count = 0 
    @@genres.each do |gen|
      if hash.include?(gen)
        hash[gen] += 1
      else
        hash[gen] = 1 
      end 
    end 
    hash
  end 
  
  def self.artist_count
    hash = {}
    @@artists.each do |art|
      if hash.include?(art)
        hash[art] += 1 
      else 
        hash[art] = 1 
      end 
    end
    hash 
  end 
  
end 