class Song
  @@count=0
  @@genres=[]
  @@artists=[]
  attr_accessor :name, :artist, :genre
  def initialize (name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres << genre
    @@artists<< artist
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
    genre_count={}
    @@genres.each do |gen| #iterating over @@genre array and storing elements in gen variable(key); how are gen values added to genre_count hash?
      if genre_count[gen] #if genre hash at gen key exists, increase gen value by one
        genre_count[gen]+=1
      else
        genre_count[gen]=1 #if genre hash at gen key doesn't exist, gen value is one
      end
    end
   genre_count #returning new genre_count hash
  end
  def self.artist_count
    artist_count={}
    @@artists.each do |art|
      if artist_count[art]
        artist_count[art]+=1
      else
        artist_count[art]=1
      end
    end
    artist_count
  end
end
#Confused as to the inherent value of keys. When adding keys to an empty hash, the value is an integer? How to change the value, e.g., to a string?
