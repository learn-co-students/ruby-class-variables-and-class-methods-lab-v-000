class Song
  attr_accessor :name, :artist, :genre
  #attr_reader
  
  @@count = 0
  @@genres = [ ]
  @@artists = [ ]
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@genres << genre
    @@artist << artist 
    @@name << name 
    
    @@count += 1
end

def genres
  x = [ ]
  @@genres.map do |thing|
    if thing == @genre
      x << thing
    end
    if x.length > 0 
      @@genres.delete(x[0])
    end
  end

    #if @@genres.include?(genre).count > 1 
    #@@genres.delete(genre)
  end
  
  def artists 
     x = [ ]
  @@artists.map do |thing|
    if thing == @artist
      x << thing
    end
    if x.length > 0 
      @@artists.delete(x[0])
    end
  end
  
  def genre_count
    hash_brown = { }
    @@genres.each do |thing|
      hash_brown << hash_brown[thing] = [ ]
    end
    hash_brown
  end
    
    def artist_count
      hash_brown = { }
      @@artists.each do |thing|
      hash_brown << hash_brown[thing] = [ ]
      if song.genre = thing
        hash_brown[thing] += 1
    hash_brown
  end
end
end