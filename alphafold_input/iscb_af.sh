#!/bin/bash
# sbatch --partition=gpu --mem=100g --cpus-per-task=8 --gres=lscratch:100,gpu:v100:1 --time 8:00:00 iscb_af.sh 
ml load alphafold2
run_singularity \
    --preset=full_dbs \
    --fasta_paths=iscb.fa \
    --max_template_date=2021-09-01 \
    --output_dir=$PWD
