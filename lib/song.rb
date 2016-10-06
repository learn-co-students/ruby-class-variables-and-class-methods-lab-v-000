class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count += 1
  end

  def Song.count
    @@count
  end

  def Song.genres
    list = []
    @@genres.each do |element|
      unless list.include?(element)
        list << element
      else
        nil
      end
    end
    list
  end

  def Song.artists
  @@artists & @@artists
  end

  def Song.genre_count
   list_count = Hash.new(0)

   @@genres.each do |value|
     list_count[value] += 1
   end

   list_count.each do |key, value|
     return list_count
   end
  end

  def Song.artist_count
    list_count = @@artists.inject(Hash.new(0)) { |key, value| key[value] += 1; key }
    
    list_count.each { |key, value| return list_count }
  end

end
