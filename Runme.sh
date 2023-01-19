#!/bin/bash

# step 1: making the movies
# I usually use the "makemovie.tcl" script to make the snapshots
# just "source makemovie.tcl" and then type "make_trajectory_movie_files"
# or you can make the snapshots using the vmd movie maker


# step 2: combining the snapshots
# suppose we have 10 movies, each consists of 200 frames, in the directories
# m1, m2, ..., m10. Each frame is an rgb file named animate.XXXX.rgb
# XXXX being 0000 to 00199

#for i in `seq -w 0000 0049`

#!/bin/bash

for i in `seq -w 0  49`
 
do
#for j in `seq -w 0  20`

#do
#a=$($j*$i+1)
#for k in `seq -w $((i*20))  $((20*(i+1)))`
#do

#       cp animate.00$i.ppm movie.$i$j.ppm
        #mv animate.0$i.ppm ani.$j.ppm

#done
for k in `seq -w $((i*20)) $((20*(i+1)))`
do
        cp animate.00$i.ppm ani.$k.ppm
       cp animate2.00$i.ppm ani2.$k.ppm
done
#ppmtompeg movie.par

#rm movie.*.ppm
#do
# if you need cropping, resizing, etc you can apply to that to each individual
# figure using convert command with "-crop", "-resize", etc options
# then you can continue
#    convert wildtype/WILDTYPE.0$i.ppm -crop 1200x1000+200+0 -fill black -stroke black -pointsize 100 -annotate 0x0+600+0 'Wild-type' wildtype/crop.0$i.ppm
    #convert proten.$i.ppm -crop 1200x1000+200+0 crop.$i.ppm
    #convert barrelalanine/BARRELALANINE.0$i.ppm -crop 1200x1000+200+0 barrelalanine/crop.0$i.ppm
    #convert barrellysine/BARRELLYSINE.0$i.ppm -crop 1200x1000+200+0 barrellysine/crop.0$i.ppm
#    convert +append proten.$i.ppm animate.$i.ppm
#    convert +append m6/animate.0$i.rgb m7/animate.0$i.rgb m8/animate.0$i.rgb m9/animate.0$i.rgb m10/animate.0$i.rgb bottom/animate.0$i.ppm
#    convert -append top/animate.0$i.ppm bottom/animate.0$i.ppm all/animate.0$i.ppm
#    convert movie.0$i$j.ppm ani.$k.ppm
#done
done
# step3: make the movie
# just make the approporiate changes in the movie.prm file and then run
#ppmtompeg movie.prm
