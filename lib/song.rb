class Song
  attr_accessor :song_name, :artist, :genre
  @@song_count=0
  @@genres_count=0
  @@artist_count=0
  @@genres=[]
  @@artists=[]
  def initialize(song_name,artist,genre)
    @@song_count+=1
    @@genres_count+=1
    @@artist_count+=1
    @song_name=song_name
    @artist=artist
    @genre=genre
    @@genre << @genre
    @@artist << @artist
  end
  def self.count
    @@song_count
  end
  def genre_count
    @@genre.uniq!.length
  end
  def artist_count
    @@artist.uniq!.length
  end
