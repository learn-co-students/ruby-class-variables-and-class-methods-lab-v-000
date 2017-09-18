class Song

  attr_reader :name, :artist, :genre

  @@count= 0
  @@genres= []
  @@artists= []

  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre= genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    # {"pop": 1, "rap": 2}
    genre_count ={}
    @@genres.each do |song_genre|
      if genre_count[song_genre]
        genre_count[song_genre] +=1
      else
        genre_count[song_genre] = 1
      end
    end
  genre_count
end

  def self.artist_count
    artist_count ={}
    @@artists.each do |song_artist|
      if artist_count[song_artist]
        artist_count[song_artist] +=1
      else
        artist_count[song_artist] = 1
      end
    end
  artist_count
  end

end
