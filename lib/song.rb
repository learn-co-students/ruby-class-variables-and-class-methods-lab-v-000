class Song
  attr_accessor :name, :artist, :genre

  @@genres = []
  @@artists = []
  @@genre_count = {}

  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    # ITERATE OVER THIS ARRAY AND POPULATE A HASH WITH THE KEY VALUE PAIRS FROM THE genre_count METHOD
    #               NEED TO CHECK THAT HASH ALREADY CONTAINS A KEY OF A PARTICULAR GENRE
    #               IF DOES CONTAIN THAT KEY, INCREMENT VALUE OF KEY BY ONE. IF NOT, CREATE A NEW KEY/VALUE PAIR
  end

  def self.count
    @name.each {|name| name.count}# TOTAL NUMBER OF SONGS CREATED
  end

  def self.genres(genre)
    @genre[genre] ||= []
      # NO RETURNING DUPLICATESkey
  end

  def self.artistskey
    @artist[artist] ||= []
      # NO CONTAINING DUPLICATES
  end

  def self.genre_count
    @@genre_count << @genre.each {|name, value|}
    @@count +=1
    # RETURNS A HASH IN WHICH KEYS ARE NAMES OF EACH GENRE, WHICH POINT TO A VALUE THAT IS THE NUMBER OF SONGS THAT HAVE THAT GENRE
  end

  def self.artist_count
    @@artist_count << @artist.each {|name, value|}
    @@count +=1
    # RETURNS A HASH IN WHICH KEYS ARE NAMES OF EACH ARTIST, WHICH POINT TO A VALUE THAT IS THE NUMBER OF SONGS THAT HAVE THAT ARTIST
  end

end
