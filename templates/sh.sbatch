#!/usr/bin/bash
#SBATCH --partition=BioCompute,hpc4,hpc5,hpc6
#SBATCH --account=ircf
#SBATCH -J JOBNAME
#SBATCH -o JOBNAME_%j_o.txt
#SBATCH --time=2-00:00:00 # 2 days, 0 hours, 0 minutes, 0 seconds
#SBATCH --mem=40G
#SBATCH --cpus-per-task 1

## BASH "strict" mode
#set -e          # Exit immediately if any step returns non-zero exit code
#set -u          # Require predeclaration of all variables (except $* and $@)
#set -o pipefail # exit if failure occurs within a pipe
#
#echo "Hello WOrld!"
#
#
#for i in hello there; do
#    echo $i;
#done


