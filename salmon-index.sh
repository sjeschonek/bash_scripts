#!/bin/sh
#SBATCH -J Salmon_index
#SBATCH --mem=24G
#SBATCH -t 1:45:00
#SBATCH --qos=biomed-condo
#SBATCH -o /gpfs/scratch/sjeschon/jobs/Salmon_index_%j.out
#SBATCH -e /gpfs/scratch/sjeschon/jobs/Salmon_index_%j.err
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=samantha_jeschonek@brown.edu

module load java
module load salmon/0.9.1

cd /gpfs/data/kmowry/sjeschon/Granulomics/RNASeqAnalysis/xenlarefs/Xenla9.1/1.8.3.2/Salmon/

salmon index -t /gpfs/data/kmowry/sjeschon/Granulomics/RNASeqAnalysis/xenlarefs/Xenla9.1/1.8.3.2/XL_9.1_v1.8.3.2.primaryTranscripts.cds.fa \
-i xenla91v1832_transcripts_index

salmon index -t /gpfs/data/kmowry/sjeschon/Granulomics/RNASeqAnalysis/xenlarefs/Xenla9.1/1.8.3.2/XL_9.1_v1.8.3.2.primaryTranscripts.fa \
-i xenla91v1832_cds_index