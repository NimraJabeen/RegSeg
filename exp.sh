#!/bin/bash

#SBATCH --time=72:00:00
#SBATCH --job-name=Regsegtrain
#SBATCH --output=slurm/Regsegtrain.out
#SBATCH --error=slurm/Regsegtrain.err
#SBATCH --account=nn10058k
#SBATCH --partition=accel ## Selected partition
#SBATCH --mem-per-cpu=24000 ## Memory allocated to each task
#SBATCH --ntasks=1 ## Number of tasks that will be allocated
#SBATCH --gpus=1 ## GPUs allocated per task

nvidia-smi
echo "This script is running on "
echo "-------------------------"
which python3
python3 train.py 

echo "-------------------------"

echo $HOSTNAME

echo "-------------------------"