class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = [] 
  @@genres = []

  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre

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
    unique_genres = {}
    @@genres.each do |genre|
      if unique_genres[genre] 
        unique_genres[genre]+=1
      else 
        unique_genres[genre] = 1
      end 
    end 
    unique_genres
  end

  def self.artist_count
    unique_artists = {}
    
    @@artists.each do |artist|
      if unique_artists[artist]
        unique_artists[artist] += 1
      else
        unique_artists[artist] = 1
      end
    end
    
    unique_artists
end

end #end Class
