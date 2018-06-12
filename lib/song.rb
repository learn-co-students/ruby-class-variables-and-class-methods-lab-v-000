class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@count += 1

      @@genres << @genre
      @@artists << @artist



    end


  def self.count
    @@count
  end

  def self.artists
    a = [];
    @@artists.each{|artist| a << artist unless a.include?(artist)};
    a;

  end

  def self.genres
   g = [];
    @@genres.each{|genre| g << genre unless g.include?(genre)};
    g;

  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |genre|
      if genre_hash[genre]
      genre_hash[genre] += 1
      else
      genre_hash[genre] = 1
      end
    end
      genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist]
      artist_hash[artist] +=1
      else
      artist_hash[artist] = 1
      end
    end
    artist_hash
  end

end
