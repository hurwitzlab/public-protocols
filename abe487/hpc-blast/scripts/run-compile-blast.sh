#!/bin/bash

#PBS -W group_list=bhurwitz
#PBS -q standard
#PBS -l jobtype=cluster_only
#PBS -l select=1:ncpus=2:mem=4gb
#PBS -l place=pack:shared
#PBS -l walltime=24:00:00
#PBS -l cput=24:00:00
#PBS -M bhurwitz@email.arizona.edu
#PBS -m bea

cd $BLAST_OUT_DIR 
cat $FILE.*.parsed > $FILE.allblast
rm $FILE.*.parsed
rm $FILE.*.blastout
