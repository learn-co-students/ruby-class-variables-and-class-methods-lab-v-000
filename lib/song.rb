class Song

  @@count = 0
  @@artists = []
  @@genres =[]

  def initialize(name, artist, genre)

      @name=name
      @artist = artist
      @@artists << artist
      @genre = genre
      @@genres << genre
      @@count += 1
    end

  def self.count
    @@count
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
   end

   def self.artist_count
     @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
   end


end
