#!/bin/bash
# A script to combine all the sql files in schema into one

for section in "tables" "views"; do
    printf "/** $section **/\n\n";

    for file in `ls "schema/$section"`; do
        cat "schema/$section/$file";
        printf "\n\n";
    done;
done;