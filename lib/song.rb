class Song

  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  attr_reader :artists, :genres






  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << artist
    @@genres << genre
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

  def self.genre_count

    genre_count = {}


    newlist = []
    @@genres.each do |agenre|
      genre_count[agenre] = 0
      genre_count.each do |agenre1, count|
        newlist << agenre1

        if newlist.include?(agenre1)
          genre_count[agenre1] = count + 1
        else
          genre_count[agenre1] = count
        end
      end
    end
  return genre_count

  end

  def self.artist_count

    artist_count = {}

    newlist = []
    @@artists.each do |anartist|
      artist_count[anartist] = 0

      artist_count.each do |anartist1, count|
        newlist << anartist1

        if newlist.include?(anartist1)
          artist_count[anartist1] = count + 1
        else
          artist_count[anartist1] = count
        end


      end
    end
  return artist_count

  end


end
