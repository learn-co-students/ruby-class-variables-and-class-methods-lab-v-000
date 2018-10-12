
[1mFrom:[0m /home/redolent-teacher-2456/ruby-class-variables-and-class-methods-lab-v-000/lib/song.rb @ line 27 Song#initialize:

    [1;34m11[0m:   [32mdef[0m [1;34minitialize[0m(name, artist, genre)
    [1;34m12[0m:     @name = name
    [1;34m13[0m:     @artist = artist
    [1;34m14[0m:     @genre = genre
    [1;34m15[0m: 
    [1;34m16[0m:     [36m@@count[0m += [1;34m1[0m 
    [1;34m17[0m:     [36m@@genres[0m << @genre
    [1;34m18[0m:     [36m@@artists[0m << @artist
    [1;34m19[0m:     
    [1;34m20[0m: [1;34m#    @@genres.each do |genre| [0m
    [1;34m21[0m:       [32mif[0m [36m@@genre_count[0m.keys.include?(@genre)
    [1;34m22[0m:         [36m@@genre_count[0m[@genre] += [1;34m1[0m
    [1;34m23[0m:       [32melse[0m
    [1;34m24[0m:         [36m@@genre_count[0m[@genre] = [1;34m1[0m
    [1;34m25[0m:       [32mend[0m
    [1;34m26[0m:       
 => [1;34m27[0m:       binding.pry
    [1;34m28[0m: [1;34m#      binding.pry[0m
    [1;34m29[0m: [1;34m#      @@genre_count.keys.each do |genre_key|[0m
    [1;34m30[0m: [1;34m#        if genre_key == genre[0m
    [1;34m31[0m: [1;34m#          @@genre_count[genre_key] += 1[0m
    [1;34m32[0m: [1;34m#        else[0m
    [1;34m33[0m: [1;34m#          @@genre_count[genre_key] = 1[0m
    [1;34m34[0m: [1;34m#        end[0m
    [1;34m35[0m: [1;34m#      end[0m
    [1;34m36[0m: [1;34m#    end[0m
    [1;34m37[0m:   [32mend[0m

