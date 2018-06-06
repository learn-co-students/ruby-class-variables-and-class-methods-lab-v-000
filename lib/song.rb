class Song 

  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    temp_hash = @@genres.group_by {|genre| genre}
    temp_array = temp_hash.map {|key, val| [key, val.count]}
    Hash[temp_array]
  end


  def self.artist_count
    temp_hash = @@artists.group_by {|artist| artist}
    temp_array = temp_hash.map {|key, val| [key, val.count]}
    Hash[temp_array]

  end
  
end