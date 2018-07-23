class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1
    
    if @@genres.include?(genre)
      @@genre_count[genre] += 1
    else 
      @@genre_count[genre] = 1 #The @@genre_count is needed before [genre] because it still needs an empty hash. You can just expect [genre] to = 1
    end
    
    if @@artists.include?(artist)
      @@artist_count[artist] += 1
    else 
      @@artist_count[artist] = 1
    end
    
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre
    
    
    # i would've put @@genre_count[genre] = @@count += 1 but my thought process was, I thought i set @@count = to +=1 thinking that it was a variable. What the goal is to increase by 1 every time there is a genre. So when genre is increased '+= 1' counts for me
  end
  def genre
    @genre
  end
  def artists
    @artist
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
    @@genre_count
  end
  def self.artist_count
    @@artist_count
  end
end


