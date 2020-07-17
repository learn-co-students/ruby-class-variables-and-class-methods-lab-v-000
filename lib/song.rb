class Song

  @@count=0
  @@genres=[]
  @@artists=[]

  attr_accessor :name,:artist,:genre

  def initialize(name, artist, genre)
    @name = name
    @artist =artist
    @genre = genre
    @@count+=1
    @@genres << genre
    @@artists << artist
  end


  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
     @hash_genre_count={}
    @@genres.collect do |genre_type|
        if @hash_genre_count[genre_type]
          @hash_genre_count[genre_type] += 1
         else
          @hash_genre_count[genre_type] = 1
         end
      end
    @hash_genre_count
  end


  def self.artist_count
    @hash_artist_count={}
    @@artists.collect do |artis|
      if @hash_artist_count[artis]
        @hash_artist_count[artis] += 1
        else
        @hash_artist_count[artis] = 1
      end
    end
    @hash_artist_count
  end
end
  