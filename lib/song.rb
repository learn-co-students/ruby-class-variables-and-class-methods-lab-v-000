


class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@artist_count = {}
  @@genres = []
  @@genre_count = {} 
  
  
  
  def initialize(artist_name,artist,genre) 
    @name = artist_name 
    @artist = artist
    @genre = genre
    
    @@count += 1
    
    if not @@artists.include?(artist)
      @@artists << artist 
      @@artist_count[artist] = 1
    else
      @@artists << artist
      @@artist_count[artist] += 1	
    end

    if not @@genres.include?(genre)
      @@genres << genre
      @@genre_count[genre] = 1 
    else
      @@genres << genre
      @@genre_count[genre] += 1	
    end
  end
    
    
  def self.count
    @@count 
  end
  
  def self.artists 
    puts @@artists.inspect
    @@artists.uniq!
  end
  
  
  def self.genres 
    puts @@genres.inspect
    @@genres.uniq!
  end
  
  def self.genre_count
    @@genre_count
  end

   def self.artist_count
    @@artist_count
  end
  
end
    
# test1 = Song.new('hello','lionel','easy')
# test2 = Song.new('control','janet jackson', 'rb')
# test3 = Song.new('nasty', 'janet jackson', 'rb')


# puts Song.count
# puts Song.genres.inspect
# puts Song.artists.inspect

# puts Song.genre_count
# puts Song.artist_count
