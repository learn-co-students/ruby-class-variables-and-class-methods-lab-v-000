class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@genres=[]
  @@artists=[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq {|x| x}
  end

  def self.genres
    @@genres.uniq {|x| x}
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      count[genre] ? count[genre] += 1 : count[genre] = 1
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      count[artist] ? count[artist] += 1 : count[artist] = 1
    end
    count
  end

end
