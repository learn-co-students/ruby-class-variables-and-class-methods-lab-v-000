require 'pry'
class Song

  ### HOW ON EARTH am I supposed to know that `.self` shoud preface certain methods? ###
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
#  @@artist_count = []
  @@songs = []
#  @@genre_count = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
#     artist_count(artist, songs)
#     artist_count ||= {}
   # @@artist_count << self
  #  @@genre_count << self
  end
#binding.pry
  def name=(name)
    @name =name
  end

  def name
    @name
  end

  def self.count
    return @@count
  end

  def self.artists
    unique_artists_list = []
    @@artists.each do |unique_artist|
 # binding.pry
       if unique_artists_list.include?(unique_artist)
        nil
       else
        unique_artists_list << unique_artist
       end
      #return unique_artists_list
      end
    return unique_artists_list
  end

  def self.genres
    unique_genres = []
    #@@songs
    @@genres.each do |unique_genre|
      if unique_genres.include?(unique_genre)
        nil
      else
        unique_genres <<  unique_genre
      end
    end
    return unique_genres
  end

  def self.artist_count
    artistcount = {}

    @@artists.each do |artie|
      if artistcount.has_key?(artie)
        artistcount[artie] += 1
      else
        artistcount[artie] = 1
      end
    end
    return artistcount

  end

  def self.genre_count
     # @@genres.group_by{|v| v }.flat_map{|k, v| [v.size, k]}
#     Hash[*data.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
    # genrecount = 0
# #    songs = []
     gencount = {}
     @@genres.each do |genre|

       if gencount.has_key?(genre)
         gencount[genre] += 1
       else
         gencount[genre] = 1
       end
     end
     return  gencount
  end
end
#       songs.each do |song|
#         if songs.include?(song)
#           nil
#         else
#           genrecount[genre] << song
#         end
#     else
#         genrecount <<

#        genrecount << unique_g1, songs