class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres << @genre
    @@artists << @artist
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
    #text= gets.chomp
    #words = text.split(" ")
    frequencies = Hash.new(0)
    @@genres.each {|word| frequencies[word] += 1 }
    #frequencies = frequencies.sort_by {|a, b|b}
    #frequencies.reverse!
    frequencies.each {|word, frecuency| puts word + " " + "=>" + frecuency.to_s }
    frequencies
  end



  def self.artist_count
    frequencies = Hash.new(0)
    @@artists.each {|word| frequencies[word] += 1 }
    frequencies.each {|word, frecuency| puts word + " " + "=>" + frecuency.to_s }
    frequencies
  end
  
end
