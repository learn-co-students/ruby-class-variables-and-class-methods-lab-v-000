def unique_list(l)
  r=[]
  l.each{|a| (r.include?(a)) ? nil : r<<a}
  r
end
def gen_count(l)
  r={}
  l.each{|a| (r[a]==nil) ? r[a]=1 : r[a]+=1}
  r
end

class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(n,a,g)
    @name=n
    @artist=a
    @genre=g
    @@count+=1
    @@artists<<a
    @@genres<<g
  end
  def self.count
    @@count
  end
  def self.artists
    unique_list(@@artists)
  end
  def self.genres
    unique_list(@@genres)
  end
  def self.genre_count
    gen_count(@@genres)
  end
  def self.artist_count
    gen_count(@@artists)
  end
end
