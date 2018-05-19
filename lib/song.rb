class Song

  def Song.count=(count)
    @Song.count=count
  end
  
  def Song.artists=(artists)
    @Song.artists=artists
  end
  
  def Song.genres=(genres) 
    @Song.genres=genres
  end
  
  def Song.genre_count(genre_count)
    @Song.genre_count=genre_count
  end
  
  def Song.artist_count(artist_count)
    @Song.artist_count=artist_count
  end
end