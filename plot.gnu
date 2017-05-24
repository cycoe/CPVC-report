set term epslatex


set output "src/origin/1/hakee.tex"

unset key
set key bottom right box

set xrange[0:]
set yrange[-10: 30]

set xlabel '时间/min'
set ylabel '转矩/N$\cdot$m'

plot "src/origin/1/hakee.ori" using 1:2 title 'AC-316' smooth csplines with lines, "src/origin/1/hakee.ori" using 3:4 title 'AC-617' smooth csplines with lines, "src/origin/1/hakee.ori" using 5:6 title 'AC-629' smooth csplines with lines, "src/origin/1/hakee.ori" using 7:8 title 'PEW-0380' smooth csplines with lines


set output "src/origin/1/tg.tex"

unset key
set key left center box

set xrange[40: 200]
set yrange[0: 1]

set arrow from 120, 0.7 to 146.09, 0.6727 lt 1
set label '146.09\cd' at 120, 0.7 offset -7, 0
set arrow from 130, 0.8 to 147.78, 0.7318 lt 2
set label '147.78\cd' at 130, 0.8 offset -7, 0
set arrow from 170, 0.9 to 155.17, 0.8172 lt 3
set label '155.17\cd' at 170, 0.9 offset 0, 0
set arrow from 130, 0.9 to 154.03, 0.848 lt 4
set label '154.03\cd' at 130, 0.9 offset -7, 0

set xlabel '温度/\cd'
set ylabel '损耗因子'

plot "src/origin/1/tg.ori" using 1:2 title 'AC-316' smooth csplines with lines, "src/origin/1/tg.ori" using 1:3 title 'AC-617' smooth csplines with lines, "src/origin/1/tg.ori" using 1:4 title 'AC-629' smooth csplines with lines, "src/origin/1/tg.ori" using 1:5 title 'PEW-0380' smooth csplines with lines


set output "src/origin/2/tg.tex"

unset key
unset arrow
unset label
set key center left box

set xrange[40: 200]
set yrange[0: 1]

set arrow from 120, 0.9 to 144.67, 0.848 lt 1
set label '144.67\cd' at 120, 0.9 offset -7, 0
set arrow from 120, 0.7 to 145.8, 0.687 lt 2
set label '145.8\cd' at 120, 0.7 offset -6, 0
set arrow from 150, 0.9 to 148.06, 0.8058 lt 3
set label '148.06\cd' at 150, 0.9 offset -3, 0.5
set arrow from 170, 0.8 to 150.89, 0.814 lt 4
set label '150.89\cd' at 170, 0.8 offset 0, 0
set arrow from 170, 0.9 to 155.42, 0.8543 lt 5
set label '155.42\cd' at 170, 0.9 offset 0, 0

set xlabel '温度/\cd'
set ylabel '损耗因子'

plot "src/origin/2/tg.ori" using 1:2 title 'PEW-0380/G-60' smooth csplines with lines, "src/origin/2/tg.ori" using 1:3 title 'A/OA2' smooth csplines with lines, "src/origin/2/tg.ori" using 1:4 title 'A/E' smooth csplines with lines, "src/origin/2/tg.ori" using 1:5 title 'OP/OA2' smooth csplines with lines, "src/origin/2/tg.ori" using 1:6 title 'OP/E' smooth csplines with lines


set output "src/origin/3/hakee.tex"

unset key
set key bottom right box

set xrange[0: 9.5]
set yrange[0: 20]

set xlabel '时间/min'
set ylabel '转矩/N$\cdot$m'

plot "src/origin/3/hakee.ori" using 1:2 title 'TMG-234' smooth csplines with lines, "src/origin/3/hakee.ori" using 3:4 title 'T-190A' smooth csplines with lines, "src/origin/3/hakee.ori" using 5:6 title 'Orgin Tin(l)' smooth csplines with lines


set output "src/origin/3/tg.tex"

unset key
unset label
unset arrow
set key center left box

set xrange[40: 180]
set yrange[0: 1]

set arrow from 115, 0.7 to 137.78, 0.6104 lt 1
set label '137.78\cd' at 115, 0.7 offset -7, 0
set arrow from 160, 0.8 to 151.77, 0.6964 lt 2
set label '151.77\cd' at 160, 0.8 offset -3.5, 0.5
set arrow from 115, 0.9 to 138.32, 0.8452 lt 3
set label '138.32\cd' at 115, 0.9 offset -7, 0

set xlabel '温度/\cd'
set ylabel '损耗因子'

plot "src/origin/3/tg.ori" using 1:2 title 'TMG-234' smooth csplines with lines, "src/origin/3/tg.ori" using 1:3 title 'T-190A' smooth csplines with lines, "src/origin/3/tg.ori" using 1:4 title 'Orgin Tin(l)' smooth csplines with lines


set output "src/example/hakee.tex"

unset key
set xrange[0:8]
set yrange[-10: 30]

set arrow from 2, 27 to 1.2, 26.35361843
set label "fusion peak" at 2, 27
set arrow from 1.2, 26.35361843 to 1.2, -10 nohead lt 0
set arrow from 1.2, 26.35361843 to 0, 26.35361843 nohead lt 0
set label "fusion\ntorgue" at 0, 26.35361843 offset 1, 0.5
set arrow from 5.1, 12.42450112 to 5.1, -10 nohead lt 0
set arrow from 5.1, 12.42450112 to 0, 12.42450112 nohead lt 0
set label "melt\ntorgue" at 2, 12.42450112 offset 0, 0.5
set arrow from 1.2, -5 to 5.1, -5
set arrow from 5.1, -5 to 1.2, -5
set label "thermal stable time" at 2, -5 offset 0, 0.5

set xlabel '时间/min'
set ylabel '转矩/N$\cdot$m'

plot "src/origin/1/hakee.ori" using 1:2 smooth csplines with lines


set output "src/example/tg.tex"

unset key
unset label
unset arrow
set xrange[40: 200]
set yrange[0: 1]

set arrow from 154.03, 0.848 to 154.03, 0 nohead lt 0
set arrow from 154.03, 0.848 to 40, 0.848 nohead lt 0
set label '$tan \, \delta$ maximun' at 40, 0.848 offset 1, 0.5
set label '$T_g$' at 154.03, 0 rotate by 90 offset -1, 1

set xlabel '温度/\cd'
set ylabel '损耗因子'

plot "src/origin/1/tg.ori" using 1:5 smooth csplines with lines
