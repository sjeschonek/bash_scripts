#!/bin/sh
#SBATCH -J Salmon_index
#SBATCH --mem=24G
#SBATCH -t 1:00:00
#SBATCH --qos=biomed-condo
#SBATCH -o /gpfs/scratch/sjeschon/jobs/Salmon_index_%j.out
#SBATCH -e /gpfs/scratch/sjeschon/jobs/Salmon_index_%j.err
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=samantha_jeschonek@brown.edu

module load java
module load salmon/0.9.1

cd /gpfs/scratch/sjeschon/Quantitation/Salmon/

salmon index -t /gpfs/data/kmowry/sjeschon/Granulomics/RNASeqAnalysis/xenlarefs/Xenla9.2/XL92_transcripts.gz \
-i xenla92t_index