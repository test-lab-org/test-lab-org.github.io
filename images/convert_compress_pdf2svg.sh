#!/bin/bash
# convert pdf2svg, compress svgs in svgs

pdftocairo -svg behav-1.pdf behav-1.svg
pdftocairo -svg behav-2.pdf behav-2.svg
pdftocairo -svg behav-3.pdf behav-3.svg

svgo -f svgs -o svgs_compressed

echo "done"