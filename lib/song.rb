class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
   #increment Class @@count variable at birth of new song
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  #Class method returning Class @@count variable
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
    genre_count_hash = {} #empty array
    @@genres.each do |genre| #iterate over Class @@genres
      #conditional ONLY IF the key for the genre does not exist yet
      if genre_count_hash.include?(genre_count_hash[genre]) == false
        key = genre #make the genre the key 
        value = @@genres.count(genre) #count number of times genre appears as value
        genre_count_hash[key] = value #make the key value pair
      end
    end
    genre_count_hash #return the array
  end

  def self.artist_count
    artist_count_hash = {} #empty array
    @@artists.each do |artist| #iterate over Class @@artists
      #conditional ONLY IF the key for the artist does not exist yet
      if artist_count_hash.include?(artist_count_hash[artist]) == false
        key = artist #make the genre the key 
        value = @@artists.count(artist) #count number of times artist appears as value
        artist_count_hash[key] = value #make the key value pair
      end
    end
    artist_count_hash #return the array
  end

end