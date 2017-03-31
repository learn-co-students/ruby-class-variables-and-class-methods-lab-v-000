class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]

  def initialize(name,artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
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
    arr={}
    self.genres.each{|x|
      arr[x]=0
    }
    @@genres.each{|x|
      arr[x] += 1
    }
    arr
  end

  def self.artist_count
    arr={}
    self.artists.each{|x|
      arr[x]=0
    }
    @@artists.each{|x|
      arr[x] += 1
    }
    arr
  end
end
