# for i in *.png; do convert "$i" ${i##*.png}1.pdf; echo $i ; done
for i in *.png; do convert "$i" $i.pdf; echo $i ; done
