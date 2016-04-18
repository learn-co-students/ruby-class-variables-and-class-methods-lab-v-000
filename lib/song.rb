class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end

  def self.genres
    genres_no_duplicates = []
    @@genres.each do |item| 
      if genres_no_duplicates.include?(item) != true
        genres_no_duplicates << item
      end
    end
    genres_no_duplicates
  end


  def self.artists
    artists_no_duplicates = []
    @@artists.each do |item|
      if artists_no_duplicates.include?(item) != true
        artists_no_duplicates << item
      end
    end
    artists_no_duplicates
  end

  def self.genre_count
    genre_tally  = {}
    @@genres.each do |item| 
      if genre_tally.include?(item) != true 
        genre_tally[item] = 1 
      else genre_tally[item] += 1
      end
    end
    genre_tally
  end

  

  def self.artist_count
    artist_tally = {}
    @@artists.each do |item|
      if artist_tally.include?(item) != true
      artist_tally[item] = 1
      else artist_tally[item] += 1
      end
    end
    artist_tally
  end

end