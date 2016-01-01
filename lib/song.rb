class Song

  @@count=0
  @@genres=[]
  @@artists=[]
  @@names=[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre


    @@names << name
    @@artists << artist
    @@genres << genre
    @@count+=1
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

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    return_hash={}
    @@artists.uniq.each do |artist|
      return_hash[artist]=@@artists.find_all{|item| artist==item}.count
    end
    return_hash
  end

  def self.genre_count
    return_hash={}
    @@genres.uniq.each do |genre|
      return_hash[genre]=@@genres.find_all{|item| genre==item}.count
    end
    return_hash
  end


end