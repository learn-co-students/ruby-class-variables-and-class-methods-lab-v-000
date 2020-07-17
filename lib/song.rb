
class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres<<@genre
    @@artists<<@artist
  end

  def self.count
    @@count
  end

  def self.genres
    res=[]
    @@genres.collect do |genre|
      if !res.include?(genre)
        res<<genre
      end
    end
    res
  end

  def self.artists
    res=[]
    @@artists.each do |artist|
      if !res.include?(artist)
        res<<artist
      end
    end
    res
  end

  def self.genre_count
    res={}
    count=0
    @@genres.each do |genre|
      if res[genre]==nil
        res[genre]=0
      end
      res[genre]+=1
    end
    res
  end

  def self.artist_count
    res={}
    count=0
    @@artists.each do |artist|
      if res[artist]==nil
        res[artist]=0
      end
      res[artist]+=1
    end
    res
  end
end
