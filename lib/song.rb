class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists =[]
  @@genres = []

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
    #if @@genres.include?(genre) == false
    #    @@genres<<genre
    #else
    #  nil
    #end
    @@genres.uniq
  end

  def self.artists
    #if @@artists.include?(artist) == false
    #    @@artists<<artist
    #else
    #  nil
    #end
    @@artists.uniq
  end

  def self.genre_count
    genres_count = {}
    @@genres.each do |genre|
      if genres_count.include?(genre)
          genres_count[genre]+= 1
      else
        genres_count[genre]=[]
        genres_count[genre]= 1
      end
    end
    genres_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.include?(artist)
        artist_count[artist]+=1
      else
        artist_count[artist]=[]
        artist_count[artist]=1
      end
    end
    artist_count
  end
end
