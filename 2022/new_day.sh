if [ $# -lt 1 ]; then
    day="$(date +%-d)"
else 
    day="$1"
fi
mkdir $day
cd $day

session="53616c7465645f5f856402a9979c30d9c89208c9ee507ce5604705132facf8ca126b90e42f2f0f1d0e34dcdb00bfac6ac609f5297f08a46d0161cbcaabe438d8"
curl https://adventofcode.com/2022/day/$day/input --cookie "session=$session" > input.txt

echo "ans = 0
with open(\"input.txt\", \"r\") as f:
    while line := f.readline():


print(ans)" > part1.py

echo "ans = 0
with open(\"input.txt\", \"r\") as f:
    while line := f.readline():


print(ans)" > part2.py
