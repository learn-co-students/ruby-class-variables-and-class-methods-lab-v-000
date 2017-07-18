require "pry"
class Song
  @@count=0
  @@artists=[]
  @@genres=[]

  def initialize(iname,iartist,igenre)
    @name=iname
    @artist=iartist
    @genre=igenre

     @@count+=1
     @@artists<<iartist
     @@genres<<igenre

  end

  attr_accessor :name,:artist,:genre

  def self.count

      @@count
  end

  def self.artists
    unique=Array.new
    c=0

    while (c<@@artists.length)
      if (!(unique.include?(@@artists[c])))
           unique<<@@artists[c]
      end
      c+=1
    end
    unique
  end

  def self.genres
    unique=Array.new
    c=0
    while (c<@@genres.length)
      if (!(unique.include?(@@genres[c])))
           unique<<@@genres[c]
      end
      c+=1
    end
    unique
  end
  def self.genre_count
    count_each=Hash.new
    c=0
   while (c<@@genres.length)
     if count_each[@@genres[c]]
       count_each[@@genres[c]]+=1
     else
       count_each[@@genres[c]]=1
     end

       c+=1
    end
  count_each
  end


  def self.artist_count
    count_each=Hash.new
    c=0
   while (c<@@artists.length)
     if count_each[@@artists[c]]
       count_each[@@artists[c]]+=1
     else
       count_each[@@artists[c]]=1
     end

       c+=1
    end
  count_each
end
end
