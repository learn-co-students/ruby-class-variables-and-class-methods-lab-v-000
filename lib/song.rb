class Song
  attr_reader:name,:artist,:genre
   @@count = 0
   @@genres = []
   @@artists = []

  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres << genre
    @@artists << artist
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
    hash_genres = {}
    @@genres.each {|genre| hash_genres[genre] = 0}
    @@genres.each {|genre| hash_genres[genre] += 1}
    hash_genres
  end
=begin

genres = ["rap","pop","rap"]

 def genre_count(genres)
    hash_genres = {}
    
    genres.each {|genre| hash_genres[genre] = 0}
     genres.each {|genre| hash_genres[genre] += 1}
    hash_genres
  end
  
  genre_count(genres)
  
  genre_count(genres,genre)
=end
  def self.artist_count
    hash_artists = {}
    @@artists.each {|artists| hash_artists[artists] = 0}
    @@artists.each {|artists| hash_artists[artists]+=1}
    hash_artists
  end

end
