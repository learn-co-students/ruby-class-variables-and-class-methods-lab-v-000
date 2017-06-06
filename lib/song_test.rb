require 'pry'

def genre_count(array)
  genre_count = {}
  array.each do |genre|                #for each genre entered @ init
    if genre_count.has_key?(genre)     #does hash already include key?
      genre_count[genre] += 1          #if yes, add one to existing value
    else
      genre_count[genre] = 1           #otherwise, set key as 1
      binding.pry
    end
  end
  genre_count                          #return hash
end

array = ["rap", "rap", "pop", "rap"]

genre_count(array)
