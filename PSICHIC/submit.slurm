#!/bin/bash
#SBATCH --job-name=runpsichic2
#SBATCH --account=bi46
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=12:00:00
#SBATCH --mem=64G
#SBATCH --cpus-per-task=4
#SBATCH --output=logs/job_%j.out
#SBATCH --error=logs/job_%j.err

mkdir -p logs

/fs04/scratch2/bi46/ncul0003/conda/envs/psichic_fp/bin/python main.py --regression_task True --device cuda:0