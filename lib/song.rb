
require 'pry'

class Song
  @@count=0
  @@artists=[]
  @@genres=[]
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count+=1
    @@artists << artist
    @@genres<<genre
    @name=name
    @artist=artist
    @genre = genre


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
      @@genre_count={}
    def self.genre_count
      @@genres.each do |genres| 
      @@genre_count[genres]=@@genres.count(genres)
      end
       @@genre_count
      
     
    end

    @@artist_count={}
    def self.artist_count
    @@artists.each do |artists|
      @@artist_count[artists] = @@artists.count(artists)
    end
        @@artist_count
      end

  
    
end




