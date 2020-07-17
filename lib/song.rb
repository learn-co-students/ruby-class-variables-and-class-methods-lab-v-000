class Song
  attr_accessor :name, :artist, :genre
  @@artists=[]
  @@genres=[]
  @@count=0
  def initialize(name, artist, genre)
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

  def self.artists
    # sting = []
    # @@artists.each do |var|
    #   string << var
    # end
    # return (var & var)

    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    hash= {}

    @@genres.each do |genre|
      hash.has_key?(genre)? hash[genre]+=1 : hash[genre]=1
      #hash.include?(genre)? hash[genre]+=1 : hash[genre]
      #hash[genre]? hash[genre]+=1 : hash[genre]=1
    end
    hash
  end

  def self.artist_count
    hash= {}

    @@artists.each do |artist|
      hash.has_key?(artist)? hash[artist]+=1 : hash[artist]=1
      #hash.include?(genre)? hash[genre]+=1 : hash[genre]
      #hash[genre]? hash[genre]+=1 : hash[genre]=1
    end
    hash
  end
end
