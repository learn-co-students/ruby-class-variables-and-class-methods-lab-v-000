require 'pry'
## create class Song
class Song
# add attribute accessors for title, artist name and genre 
  attr_accessor :title, :artist, :genre
  @@count = 0 
  @@artists = []
  @@genres = []
  
  #create class methods for:
#  - count 
#  - artists
#  - genres 
#  - genre count
#  - artist count
    def self.count 
    # use the self keyword
      @@count
    end
  
    def self.artists
        @@artists.uniq
        # if the artists class variable array includes artist already, don't return same values 
    end
  
    def self.genres
      @@genres.uniq
    end 
  
    def self.genre_count
      # create or pull key value pair
      # genre - key 
      # number - value
      count_hash = {} 
      @@genres.each do |genre|
      # check to see if the key exists in count_hash
        if !count_hash[genre]
       # if key doesn't exist in count_hash, set equal to one
          count_hash[genre] = 1
        # if key does exist in count_hash, add one
        else
          count_hash[genre] += 1
            end
        end
          count_hash
    end
    
    def self.artist_count
      songs_hash = {}
    end 
# create initialize method, 
    def initialize(title, artist_name, genre)
      # upon initialization include
      #  - song title 
      #  - artist name 
      #  - genre 
      @title = title
      @@artists << artist_name
      @artist = artist_name # this has to stay in initialize method
      @genre = genre
      @@genres << genre 
      @@count += 1
    end 

#create instance methods for:
#  - name 
#  - artist 
#  - genre 
#  - count 
  def name 
    @title
  end 

end 