ls **/*.bam | parallel "samtools view {} | cut -f 3 | sort | uniq -c | awk '{t = \$ 1; \$ 1 = \$ 2; \$ 2 = t; print}' > {}.counts.txt"