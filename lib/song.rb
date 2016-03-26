# song.rb

class Song
  attr_accessor :name, :artist, :genre

  @@count = 1
  @@genres = []
  @@artists = []

  def initialize( name, artist, genre )
    # Increment the song count when a song is added
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

    # add the genre to @@genres
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    # Iterate through @@genres and report all unique (non duplicate) genres
    # ####
    # unique_genres = []
    # @@genres.each do |genre|
    #   unique_genres << genre unless unique_genres.include?(genre)
    # end
    # unique_genres
    # #uniq does this for me:
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if !genre_count[genre]
        genre_count[genre] = 1
      else
        genre_count[genre] += 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if !artist_count[artist]
        artist_count[artist] = 1
      else
        artist_count[artist] += 1
      end
    end
    artist_count
  end

end
