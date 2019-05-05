class Song
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    @@genres.map do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.map do |art|
     if artist_count[art]
       artist_count[art] += 1
     else
       artist_count[art] = 1
     end
   end
   artist_count
 end




end
