#!/usr/bin/env RScript

library(SeqArray)
library(SeqVarTools)

cat("\n")

# Parse Args
args = commandArgs(trailingOnly=TRUE)

gdsfile <- args[1]

vcffile <- args[2]

# Load VCF
seqVCF2GDS(vcffile, gdsfile, info.import="ABHet", fmt.import=c("GT", "AD", "GQ"), storage.option="LZMA_RA", parallel=8, verbose=TRUE)
