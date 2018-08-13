require "pry"
class Song
attr_reader :name, :artist, :genre
@@count=0
@@artists=[]
@@genres=[]
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre

    @@artists << artist
    @@genres << genre
    @@count+=1
  end

  def self.count
    @@count
  end

  def self.artists
    @@unique_artists=[]
    @@artists.map do |name|
      @@unique_artists << name if !@@unique_artists.include?(name)
    end
    @@unique_artists
  end

  def self.genres
    @@unique_genres=[]
    @@genres.map do |category|
      @@unique_genres << category if !@@unique_genres.include?(category)
    end
    @@unique_genres
  end

  def self.genre_count
    self.genres
   @@genre_count={}
   i=0
     while i < @@unique_genres.size
     count = @@genres.select {|genre| genre == @@unique_genres[i]}.size
     @@genre_count[@@unique_genres[i]]=count
     i+=1
     end
   @@genre_count
 end


  def self.artist_count
      self.artists
     @@artist_count={}
     i=0
       while i < @@unique_artists.size
       count = @@artists.select {|artist| artist == @@unique_artists[i]}.size
       @@artist_count[@@unique_artists[i]]=count
       i+=1
       end
     @@artist_count
  end

end
