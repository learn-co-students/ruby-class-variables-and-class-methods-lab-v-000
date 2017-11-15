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
  
#create class methods for:
#  - count 
#  - artists
#  - genres 
#  - genre count
#  - artist count
end 