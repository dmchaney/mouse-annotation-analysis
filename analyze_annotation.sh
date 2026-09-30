grep -v "^#" Mus_musculus.GRCm38.75_chr1.gtf | awk -F"\t" '$3=="gene"' | sed 's/.*gene_biotype "\([^"]*\)".*/\1/' | sort | uniq -c | sort -nr

