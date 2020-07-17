

class Song
#------------------------------------------------------------------------------------------------
# basic setter / getters / initialize
#------------------------------------------------------------------------------------------------
attr_accessor :name, :artist, :genre

#class variables initialized
    @@count = 0
    @@artists = []
    @@genres = []
    

def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    #to make it unique just add: if @@artists.empty?  || !@@artists.include?(artist)
    @@artists << artist

    #all genres
    @@genres << genre

    

end



#------------------------------------------------------------------------------------------------
# class methods
#------------------------------------------------------------------------------------------------
def self.count
return @@count
end

#------------------------------------------------------------------------------------------------
def self.artists
return @@artists.uniq
end

#------------------------------------------------------------------------------------------------
def self.genres
return @@genres.uniq
end

#------------------------------------------------------------------------------------------------
def self.genre_count
    @@genre_count_hash = {}
    @@genres.each  {|current_genre|
                    if @@genre_count_hash.has_key? (current_genre)
                      @@genre_count_hash[current_genre] += 1
                    else
                      @@genre_count_hash[current_genre] = 1
                    end
                  }


return @@genre_count_hash
end


#------------------------------------------------------------------------------------------------
def self.genre_count
    @@genre_count_hash = {}
    @@genres.each  {|current_genre|
                    if @@genre_count_hash.has_key? (current_genre)
                      @@genre_count_hash[current_genre] += 1
                    else
                      @@genre_count_hash[current_genre] = 1
                    end
                  }


return @@genre_count_hash
end
#------------------------------------------------------------------------------------------------
def self.artist_count
    @@artist_count_hash = {}
    @@artists.each  {|current_artist|
                    if @@artist_count_hash.has_key? (current_artist)
                      @@artist_count_hash[current_artist] += 1
                    else
                      @@artist_count_hash[current_artist] = 1
                    end
                  }


return @@artist_count_hash
end

end
