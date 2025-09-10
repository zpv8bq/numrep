set terminal pngcairo size 800,600 enhanced font 'Arial,12'
set output 'bessel.png'
set title "Bessel Functions J0, J3, J5, J8"
set xlabel "x"
set ylabel "J_l(x)"
set grid
plot "bessel0.dat" using 1:2 with lines lw 2 title "J0 (down)", \
     "bessel0.dat" using 1:3 with lines lw 2 title "J0 (up)", \
     "bessel3.dat" using 1:2 with lines lw 2 title "J3 (down)", \
     "bessel3.dat" using 1:3 with lines lw 2 title "J3 (up)", \
     "bessel5.dat" using 1:2 with lines lw 2 title "J5 (down)", \
     "bessel5.dat" using 1:3 with lines lw 2 title "J5 (up)", \
     "bessel8.dat" using 1:2 with lines lw 2 title "J8 (down)", \
     "bessel8.dat" using 1:3 with lines lw 2 title "J8 (up)"

