class Song

  attr_accessor :name,:artist,:genre
  @@count = 0
  #@@songs = []
  @@genres = []
  @@artists = []
  
  def initialize(input_name,artist,genre)

    @@count += 1
    @name = input_name
    @genre = genre
    @artist = artist
    #@@songs << input_name
    @@genres << genre
    @@artists << artist
    
  
  end

  def self.count 
    @@count
  end
  
  #def self.songs
  #  @@songs.uniq
  #end
  
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end

end

#TESTING
Song.new("Lucifer", "Jay-Z", "rap" )
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")
Song.count
#Song.songs
Song.artists
Song.genres

Song.artist_count
Song.genre_count  