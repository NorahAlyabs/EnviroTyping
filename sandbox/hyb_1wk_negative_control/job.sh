#!/bin/bash
#
#
#SBATCH -J hyb_wks3-5_by_week_1k
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p skx-normal
#SBATCH -t 24:00:00
#SBATCH -A Envriotype
#SBATCH -o slurm.%N.%j.out
#------------------------------------------------------
mkdir output
remora Rscript --vanilla --verbose ./job.R > ./output.Rout
