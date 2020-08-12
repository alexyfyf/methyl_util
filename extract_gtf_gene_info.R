## parse ensembl GTF file into R data.frame

## require refGenome package
## gtfloc: use relative path
## columns: options: seqid, source, start, end, strand, gene_id, gene_name, gene_biotype 

extract_gtf_gene_info <- function(gtfloc=  gtfloc,columns = c("gene_id","gene_name","gene_biotype")) {
  library(refGenome)
  gtf = ensemblGenome()
  read.gtf(gtf,gtfloc)
  gene.id.name.biotype <- gtf@ev$genes[,columns]
  return(gene.id.name.biotype)
}
