require 'pry'

def test(hash, genres)
  genres.each do |i|
  if hash.keys.include?(i) == false; 
    hash[i] = 1
  else hash[i]+=1 
    end
  end
   puts hash
end


hash = {"soul"=>1, "jamband"=>2}
genres = ["rap", "rap", "pop", "pop", "pop", "pop", "soul", "country", "classical", "asdf", "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf" , "asdf"]


test(hash,genres)

