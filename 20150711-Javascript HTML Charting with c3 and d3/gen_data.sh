YEAR=$(date +%Y)
echo 'date,purchased,sold' > data.csv ; for m in {3..5} ; do for i in {1..30} ; do printf "%d-%02d-%02d,%d,%d\n" $YEAR $m $i $RANDOM $RANDOM >> data.csv ; done ; done
echo 'date,purchased,sold' > data2.csv ; for m in {3..5} ; do for i in {1..30} ; do printf "%d-%02d-%02d,%d,%d\n" $YEAR $m $i $RANDOM $RANDOM >> data2.csv ; done ; done