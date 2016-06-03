class Song
@@count = 0
@@genres = []
@@artists = []
attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@count +=1
    @@artists << @artist

  end

  def self.count
    @@count
  end

  def self.genres
    no_duplicate_genres = []
    @@genres. each do |genre_title|
      if no_duplicate_genres.include?(genre_title) == false
        no_duplicate_genres <<genre_title
      end
    end
    return no_duplicate_genres
  end

  def self.artists
    no_duplicate_artists = []
    @@artists. each do |artist_name|
      if no_duplicate_artists.include?(artist_name) == false
        no_duplicate_artists <<artist_name
      end
    end
    return no_duplicate_artists
  end

  def self.genre_count
    genre_hash ||= {}

    @@genres.each do |genre_name|
      genre_hash.each do |key, value|
        if key == genre_name
          value +=1
        else
          genre_hash = {genre_name => 0}
        end

      end

    end
    return genre_hash
  end

  def self.artist_count

  end

end
