require 'pry'
## create class Song
class Song
# add attribute accessors for title, artist name and genre 
   attr_reader :title, :artist_name, :genre
  
# create initialize method, 
    def initialize(title, artist_name, genre)
      # upon initialization include
      #  - song title 
      #  - artist name 
      #  - genre 
      @title = title
      @artist_name = artist_name
      @genre = genre  
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