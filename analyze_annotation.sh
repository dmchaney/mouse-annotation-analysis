grep -v "^#" Mus_musculus.GRCm38.75_chr1.gtf | awk -F"\t" '$3=="gene"' | sed 's/.*gene_biotype "\([^"]*\)".*/\1/' | sort | uniq -c | sort -nr

grep -v "^#" Mus_musculus.GRCm38.75_chr1.gtf | awk -F"\t" '$3=="gene"' | grep 'gene_biotype "protein_coding"' | sed 's/\t[^\t]*gene_name "\([^"]*\)".*/\t\1/' | awk -F"\t" '{print $5-$4+1"\t"$9"\t"$7}' | sort -nr | head -5

awk -F"\t" '{total = total + $2 - $1 + 1} END {print total}' Mus_musculus.GRCm38.75_chr1.gtf
