class Song
  attr_accessor :name, :artist, :genre
  @@count=0

  def intialize(new)
    @new=new
    @@genres=[]
    @@artists=[]
    @@count+=1
  end

  def new(name, artist, genre)
    @new=new
  end

  def artist_count
    @artist_count=artist_count
  end

  def genre_count
    @genre_count=genre_count
  end

  def count
    @count
  end

  def genres
    @genres=genres
  end
end
