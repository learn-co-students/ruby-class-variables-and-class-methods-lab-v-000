class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@genres=[]
  @@artists=[]
  @@genre_count={}
  @@artist_count={}

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@artists<<@artist
    @@genres<<@genre
    @@count+=1
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
    @@genre_count.default=0
   @@genres.each do |type|
    @@genre_count[type]+=1
   end
   @@genre_count
  end

def self.artist_count
  @@artist_count.default=0
  @@artists.each do |name|
    @@artist_count[name]+=1
  end
  @@artist_count
end
end 