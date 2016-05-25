class Song
  attr_accessor :name, :artist, :genre 

  @@count = 0 
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count+1
    @@genres = @@genres<<genre
    @@arists = @@artists<<artist
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
 Hash[*@@genres.group_by{ |genre| genre }.flat_map{ |genre, value| [genre, value.size] }]
end

 def self.artist_count
 Hash[*@@artists.group_by{ |artist| artist }.flat_map{ |artist, value| [artist, value.size] }]
end


end




 #if @@genres.include?(genre)
   #             @@genres
  #            else
 #              end

