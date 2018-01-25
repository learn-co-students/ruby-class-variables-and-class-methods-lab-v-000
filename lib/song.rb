
class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]
  @@genre_count={}
  @@artist_count={}

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
    self.genres.each {|x| @@genre_count[x]=0}
    @@genres.each {|x| @@genre_count[x]+=1}
    @@genre_count
  end

  def self.artist_count
    self.artists.each {|x| @@artist_count[x]=0}
    @@artists.each {|x| @@artist_count[x]+=1}
    @@artist_count
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count+=1
    @@artists.push(@artist)
    @@genres.push(@genre)

  end



end
