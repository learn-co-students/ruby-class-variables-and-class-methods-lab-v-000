class Song
  
  attr_accessor :name, :artist, :genre
  
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
    @@artists << artist
    @@genres << genre
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

  def self.genre_count
    @@genres.each do |g|
      if @@genre_count[g] == nil
        @@genre_count[g] = 1
      else
        @@genre_count[g] += 1
      end
    end
      @@genre_count
  end

  def self.artist_count
    @@artists.each do |a|
      if @@artist_count[a] == nil
        @@artist_count[a] = 1
      else
        @@artist_count[a] += 1
      end
    end
    @@artist_count
  end 
end