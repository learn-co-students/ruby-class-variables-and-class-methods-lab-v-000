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

  def self.genres
    numGenres = []
    @@genres.each do |genre|
       if numGenres.include?(genre) == false
         numGenres << genre
       end
     end
    numGenres
  end

  def self.artists
    numArtists = []
    @@artists.each do |artist|
       if numArtists.include?(artist) == false
         numArtists << artist
       end
     end
    numArtists
  end

  def self.genre_count
    genreCountHash = {}
    @@genres.each do |genre|
       if genreCountHash.include?(genre) == false
         genreCountHash[genre] = 0
       end
       genreCountHash[genre] += 1
     end
    genreCountHash
  end

  def self.artist_count
    artistCountHash = {}
    @@artists.each do |artist|
       if artistCountHash.include?(artist) == false
         artistCountHash[artist] = 0
       end
       artistCountHash[artist] += 1
     end
    artistCountHash
  end

end
