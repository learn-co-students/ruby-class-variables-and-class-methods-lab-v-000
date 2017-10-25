class Song
  attr_accessor :name, :artist, :genre

  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres = []
    @@genres << @genre
    # ITERATE OVER THIS ARRAY AND POPULATE A HASH WITH THE KEY VALUE PAIRS FROM THE genre_count METHOD
    #               NEED TO CHECK THAT HASH ALREADY CONTAINS A KEY OF A PARTICULAR GENRE
    #               IF DOES CONTAIN THAT KEY, INCREMENT VALUE OF KEY BY ONE. IF NOT, CREATE A NEW KEY/VALUE PAIR
    @@artists = []
    @@genre_count = {}
  end

  def self.count
    @name.each {|name| name.count}# TOTAL NUMBER OF SONGS CREATED
  end

  def self.genres(genre)
    @genre[genre] ||= []
    @@genres << @genre# NO RETURNING DUPLICATES
  end

  def self.artists
    @artist[artist] ||= []
    @@artists << @artist
    # NO CONTAINING DUPLICATES
  end

  def self.genre_count
    @@genre_count << @@genres.each {|key, value| value.count}
    # RETURNS A HASH IN WHICH KEYS ARE NAMES OF EACH GENRE, WHICH POINT TO A VALUE THAT IS THE NUMBER OF SONGS THAT HAVE THAT GENRE
  end

  def self.artist_count
    @@artist_count << @@artists.each {|key, value| value.count}
    # RETURNS A HASH IN WHICH KEYS ARE NAMES OF EACH ARTIST, WHICH POINT TO A VALUE THAT IS THE NUMBER OF SONGS THAT HAVE THAT ARTIST
  end

end
