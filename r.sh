#!/bin/bash

if [[ "$1" == "clean" ]]; then
    rm -f bachelor-thesis.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,pdf,out}
else
    for i in bachelor; do
        xelatex $i-thesis
        biber   $i-thesis
        xelatex $i-thesis
        xelatex $i-thesis
    done

    # for i in bachelor; do
    #     pdflatex $i-thesis-legacy
    #     biber    $i-thesis-legacy
    #     pdflatex $i-thesis-legacy
    #     pdflatex $i-thesis-legacy
    # done

    rm -f bachelor-thesis.{bib,aux,log,bbl,bcf,blg,run.xml,toc,tct,out}
fi
