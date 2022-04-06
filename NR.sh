awk -F',' ' NR==3 {b = $2} NR==1 {a = $1}; c = (b-a); END { print c} ' two.txt | awk 'END{print}'
# 1,2
# 3,4
# 5,6
# output will be
# 5
