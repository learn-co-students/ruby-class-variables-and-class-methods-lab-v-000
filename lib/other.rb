require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres={}

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1

    binding.pry
    if !@@artists.include?(@artist)   #Artist NOT in the list?
      @@artists<<@artist             #add them to the array
    end

    if @@genres[@genre]==nil         #Are you missing the genre?
      @@genres[@genre]=1             #Instantiate a new genre with a count of 1
    else
      @@genres[@genre]+=1            #Otherwise, add one to the genre count
    end

  end
end
