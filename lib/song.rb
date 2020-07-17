class Song 
  attr_accessor :name, :artist, :genre 
 
  @@count = 0 
  @@artists = []
  @@genres = []
 
  def initialize (name, artist, genre)
    @@count += 1 
    @@artists << artist 
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
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
  @@genres.each do |g|
    genrecount[g] ? genrecount[g] +=1 : genrecount[g] = 1 
  end
  genrecount
  end 
  
  def self.artist_count
    artistcount = {}
    @@artists.each do |a|
      artistcount[a] ? artistcount[a] += 1 :
      artistcount[a] = 1 
    end
    artistcount
  end
  
end