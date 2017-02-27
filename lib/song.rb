class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @genre = genre
    @name = name
    @artist = artist
    @@count +=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end
  def self.artists
    temp =[]
    @@artists.each do |x|
      if not temp.include?(x)
        temp << x
      end
    end
    temp
  end
  def self.genres
    temp =[]
    @@genres.each do |x|
      if not temp.include?(x)
        temp << x
      end
    end
    temp
  end
  def self.genre_count
    temp = {}
    @@genres.each do |x|
      if not temp.key?(x)
        temp[x] =1
      else
        temp[x] +=1
      end
    end
    temp
  end
  def self.artist_count
    temp = {}
    @@artists.each do |x|
      if not temp.key?(x)
        temp[x] =1
      else
        temp[x] +=1
      end
    end
    temp
  end
end
