#!/bin/bash

mkdir -p input/dipper
cd input/dipper

# Download simple HTML page and name it as index.html
wget -O index.html https://archive.monarchinitiative.org/latest/rdf/

# Extract URLs from the HTML document to an array. 
array=( $(cat index.html | sed -r -n 's/.*href="(.*?(\.nt|\.ttl))".*/\1/p') )
for var in "${array[@]}"
do
  # Download each file
  wget -N https://archive.monarchinitiative.org/latest/rdf/${var}
done
