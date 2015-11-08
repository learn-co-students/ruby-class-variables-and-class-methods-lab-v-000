class Song
  attr_accessor :name, :genre, :artist

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @song = song
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def new(name,artist,genre)
  end

  def count
    @@count
  end

  def genres
    @@genres.uniq
  end

  def artists
    @@artists.uniq
  end

  def genre_count
    genre_hash = {}
    @@genre.each do |genre|
      if genre_hash[genre]
        genre_hash[genre] +=1
      else
        genre_hash[genre] = 1
    end
      genre_hash
    end
  end

  def artist_count
    artist_hash = {}
    @@artist_hash.each do |artist|
      if artist_hash[artist]
        artist_hash[artist] +=1
      else
        artist_hash[artist] = 1
    end
    artist_hash
  end
end