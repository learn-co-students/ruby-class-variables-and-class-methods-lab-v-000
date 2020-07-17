class Song
  attr_accessor :name,:genre,:genres,:count,:name,:artist
  @@count = 0
  @@genres = []
  @@artists = []
  @@artists_hash = {}
  @@genres_hash = {}
  
  def initialize(name,artist,genre)
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

  def self.genre_count
    result = @@genres.each_with_object(Hash.new(0)) {|genre,count| count[genre] += 1}
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end
  
  def artists
    @@artists.uniq
  end

  def self.artist_count
    result = @@artists.each_with_object(Hash.new(0)) {|artist,count| count[artist] += 1}
  end

  
    
end
