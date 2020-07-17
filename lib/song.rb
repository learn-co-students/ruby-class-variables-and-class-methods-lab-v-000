class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name, artist, genre)
    @name=name
    @genre=genre
    @artist=artist
    @@count+=1
    @@artists<<artist
    @@genres<<genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    Hash[@@genres.group_by {|genre| genre}.map {|key,value| [key,value.count]}]
  end

  def self.artists
    @@artists.uniq
  end


  def self.artist_count
    Hash[@@artists.group_by {|artist| artist}.map {|key,value| [key,value.count]}]
  end
end
