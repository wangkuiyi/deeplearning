#!/bin/bash

for i in /data/*.md; do
    basename=$(basename $i | sed 's/\.md$//')
    echo "Pandocing $basename.md ... " 
    pandoc $i --latex-engine=xelatex -o /data/pdf/$basename.pdf
done
