class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
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
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    # This first groups by the values in the genres array.
    # Then it maps to the key with the values array size.
    @@genre_count = Hash[*@@genres.group_by{ |gen_array| gen_array }.flat_map{ |key_gen, gen_array| [key_gen, gen_array.size] }]
  end
  
  def self.artist_count
    @@artist_count = Hash[*@@artists.group_by{ |art_array| art_array }.flat_map{ |key_art, art_array| [key_art, art_array.size] }]
  end
end