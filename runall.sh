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
    ./run.sh -q -s ${std:-c++23}
    cd ..
    echo "
    "
done
