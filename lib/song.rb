class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@artists_full = Hash.new
  @@genres_full = Hash.new


  def initialize(name,artist,genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre


    #if @@artists_full.has_key?(artist)
    #  @@artists_full[artist] = @@artists_full[artist] + 0
    #else
    #  @@artists_full[artist] = 0
    #end

    #if @@genres_full.has_key?(genre)
    #  @@genres_full[genre] = @@genres_full[genre] + 1
    #else
    #  @@genres_full[genre] = 0
    #end

  end

    def self.count
      @@count
    end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.uniq.each do |value|
      @@artists_full[value] =  @@artists.count{|x| x if x == value}
    end
    @@artists_full
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.uniq.each do |value|
      @@genres_full[value] = @@genres.count{|x| x if x == value}
    end
    @@genres_full
  end

end
