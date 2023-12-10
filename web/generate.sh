docs=("Articles_essentiels" "Biblio_Nov_23" "Theses_Rapports")
for doc in ${docs[@]}; do
        pandoc -t markdown_strict --citeproc template.md -o ${doc}.md --bibliography ../${doc}.bib 
done
