arr=( 100 101 103 104 105 106 )

min=0 max=0

for i in ${arr[@]}; do
    (( $i > max || max == 0)) && max=$i
    (( $i < min || min == 0)) && min=$i
done

echo "min=$min
max=$max"
