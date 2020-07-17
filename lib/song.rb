class Song

  attr_accessor :artist, :genre, :name

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  @@count = 0
  @@genres = []
  @@artists =[]

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
    genre_hash ={}
    @@genres.each do |g|
      if genre_hash.include?(g)
        genre_hash[g]+=1
      else
        genre_hash[g]=1
      end
    end
    genre_hash
  end
  
    def self.artist_count
    artist_hash ={}
    @@artists.each do |a|
      if artist_hash.include?(a)
        artist_hash[a]+=1
      else
        artist_hash[a]=1
      end
    end
    artist_hash
  end

end




#     genre_hash ={}
#     @@genres.each do |g|
#       if genre_hash.include?(g)
#         genre_hash[g]+=1
#       else
#         genre_hash[g]=1
#       end
#     end
#   end



# end



# genre_array =[]
# genre_hash ={}
# genre_array do |g|
#   if genre_hash.include?(g)
#         genre_hash[g]+=1
#       else
#         genre_hash[g]=1
#       end
#     end
