n=10
array=()

while ((n));do
   read -p "[$n] Give me an integer: " i
   [[ $i =~ ^[+-]?[[:digit:]]+$ ]] || continue
   array+=($i)
   ((--n))
done

# Sort the array:
{ read min; max=$(tail -n1); } < <(printf "%s\n" "${array[@]}" | sort -n)
# print min and max elements:
echo "min=$min"
echo "max=$max"
