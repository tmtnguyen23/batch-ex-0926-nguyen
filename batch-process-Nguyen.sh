#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo -n "Word count: "
    wc -w "${f}" | cut -d' ' -f1    
  fi
done

