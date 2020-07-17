class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@genres=[]
  @@artists=[]

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

  def self.genres
    @@genres.uniq
  end

  def self.build_summary_hash(array) 
    result={}
    array.each do |item|
      if result[item] then result[item] += 1
      else result[item] = 1 end
    end
    result
  end
  
  def self.genre_count 
    build_summary_hash(@@genres)
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    build_summary_hash(@@artists)
  end

end