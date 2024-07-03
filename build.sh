#!/bin/bash

name=resume_leschultz.pdf
outdir=output

rm -rf ${outdir} ${name}

mkdir -p ${outdir}
latexmk -pdf -jobname=${outdir}/main main.tex
cp ${outdir}/main.pdf ${name}

xdg-open ${name}