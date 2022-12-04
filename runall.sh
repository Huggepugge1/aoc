if [ $# -ne 1 ]; then
    echo "usage: runall.sh <year>"
    exit 1
fi

if [ ! -d $1 ]; then
    echo "No such year \"$1\""
    exit 1
fi

cd $1

for d in */; do
    cd $d
    echo "---------------"
    echo "Day $(echo $d | rev | cut -b 2- | rev)"
    echo "---------------"
    echo "Part 1"
    python3 part1.py
    echo "-----"
    echo "Part 2"
    python3 part2.py
    cd ..
    echo "\n"
done
