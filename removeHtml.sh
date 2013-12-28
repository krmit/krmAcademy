# This script must be run directly from its home folder.

find . -path ./Tools -prune -o -name '*.html' -exec rm -rf {} \;