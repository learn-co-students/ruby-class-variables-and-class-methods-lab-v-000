class Song
attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []

  @@genres = []



  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists.push << artist 


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
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
   end
    return genre_count
  end

  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ||= 0
      artist_count[artist] += 1
    end
    return artist_count
  end
         
       

end
