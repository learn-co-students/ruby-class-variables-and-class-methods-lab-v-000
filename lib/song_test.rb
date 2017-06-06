require 'pry'

def genre_count(array)
  genre_count = {}
  array.each do |genre|
    if genre_count.has_key?(genre)
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
      binding.pry
    end
  end
  genre_count
end

array = ["rap", "rap", "pop", "rap"]

genre_count(array)
