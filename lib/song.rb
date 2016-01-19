class Song 
  @@count = 0
   @@genres = []
   @@artists = []

 attr_accessor :artist, :genre, :song_name

  def initialize(song_name, artist, genre)
    @@count += 1
    
    @song_name = song_name
    @artist = artist
    @genre = genre

   
    @@genres << genre

    
    @@artists << artist
  end 

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def name
    @song_name
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
   @@genres.each do |genre|  
    hash[genre] == nil ? hash[genre] = 1 : hash[genre] += 1
  end
  hash
  end
    
    def self.artist_count 
      hash = {}
   @@artists.each do |artist|  
    hash[artist] == nil ? hash[artist] = 1 : hash[artist] += 1
  end
  hash
  end

end