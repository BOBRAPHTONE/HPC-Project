#!/bin/bash
echo "Test script"


# batch job submission using slurm
#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks=3
#SBATCH --job-name=python_mpi
#SBATCH --mem=8000
#..module load Python/3.5.1-foss-2016a
#..module load OpenMPI/1.10.2-GCC-4.9.3-2.25-CUDA-7.5.18
#...mpirun python ./python_mpi.py

SBATCH --job-name=simulate_data      # Job name -Simluate 100000 data points for visualizaton
#SBATCH --mail-type=ALL               # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=<email_address>   # Where to send mail	
#SBATCH --ntasks=1                    # Run on a single CPU
#SBATCH --mem=600mb                   # Memory limit
#SBATCH --time=00:05:00               # Time limit hrs:min:sec
#SBATCH --output=serial_test_%j.out   # Standard output and error log
 
pwd; hostname; date
 
module load python
 
echo "Running plot script on a single CPU core"
 
python /scripts/simulate.py
 
date