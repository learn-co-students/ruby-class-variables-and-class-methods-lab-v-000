class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres=[]
  @@artists=[]

  ##################################################
  def initialize(name,artist,genre)
  @name=name
  @artist=artist
  @genre=genre
  @@count += 1
  @@genres<<genre
  @@artists<<artist


  end
  ##################################################
  def self.count
    @@count
  end
  ##################################################
 def self.genres
     @@genres.uniq
 end
 ##################################################
 def self.artists
 @@artists.uniq
end
##################################################
def self.genre_count
#  @@genres.group_by{ |v| v }.map{ |k, v| k: v}
@@genres.inject(Hash.new(0)) { |k, v| k[v] += 1; k}
 #Hash[*@@genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
end
##################################################
def self.artist_count
  @@artists.inject(Hash.new(0)) { |k, v| k[v] += 1; k}
  #Hash[*@@artists.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
end
##################################################
end
