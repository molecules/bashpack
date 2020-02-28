#!/usr/bin/bash
#SBATCH --partition=BioCompute,Lewis,hpc5
#SBATCH --account=ircf
#SBATCH --time=2-00:00:00
#SBATCH --mem=40G

# BASH "strict" mode
set -e          # Exit immediately if any step returns non-zero exit code
set -u          # Require predeclaration of all variables (except $* and $@)
set -o pipefail # exit if failure occurs within a pipe

echo "Hello WOrld!"


for i in hello there; do
    echo $i;
done


