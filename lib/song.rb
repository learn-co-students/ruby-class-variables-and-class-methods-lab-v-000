class Song
  attr_accessor :name, :artist, :genre
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize (name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count += 1
    @@artists<<artist
    @@genres<<genre
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
    genre_c={}
    @@genres.each do |genre|
       if genre_c[genre] == nil
         genre_c[genre]=1
       else
         genre_c[genre] +=1
       end
     end
     genre_c
    end
    def self.artist_count
    artist_c={}
      @@artists.each do |artist|
         if artist_c[artist] == nil
           artist_c[artist]=1
         else
          artist_c[artist] +=1
         end
       end
       artist_c
      end


end
