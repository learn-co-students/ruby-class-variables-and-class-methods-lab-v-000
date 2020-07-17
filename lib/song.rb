class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists =[]
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << @genre
    @@artists << @artist
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
    #Hash[*@@genres.group_by{ |genre| genre }.flat_map{ |genre, count| [genre, count.size] }]
    @@genres.reduce(Hash.new(0)) do |hash, genre|
       hash[genre] += 1
       hash
       end
  end

 def self.artist_count
    @@artists.reduce(Hash.new(0)) do |hash, artist|
       hash[artist] +=1
       hash
  end

end
