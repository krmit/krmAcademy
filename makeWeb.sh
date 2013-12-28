# This script must be run directly from its home folder.

find . -path ./Tools -prune -o -name '*.txt' -exec ./Tools/Script/all2html.sh {} \;
echo " ";