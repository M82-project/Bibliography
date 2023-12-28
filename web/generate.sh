#!/bin/bash
docs=("Juillet_2023" "Novembre_2023" "Septembre_2023")
for doc in ${docs[@]}; do
        pandoc -t markdown_strict --citeproc /data/web/template.md -o ${doc}/${doc}.md --bibliography ${doc}/*.bib 
done
