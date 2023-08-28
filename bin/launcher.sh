#!/bin/bash
#SBATCH -A try22_Loreti2
#SBATCH --partition=skl_usr_prod
#SBATCH --job-name=SPK_3_48_exe
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH -o job.out
#SBATCH -e job.err
#SBATCH --gres=msrsafe
#SBATCH --exclusive

module load autoload openmpi/3.0.0--gnu--7.3.0 env-skl/1.0 papi/6.0.0  

srun ./tester -o "output_8640scalapacky.csv" \
-r 1 -no-cnd-readback -no-cnd-set -no-nre-readback \
-nm 8640 \
-i "/marconi_work/try22_Loreti2/test_matrices/rank8640_cnd1_seed1" \
-spk-nb 32 \
-ft 0 \
-ma 0 \
-head "dim_matrix: 8640   ranks: 16   nodes:1   rXn:16   soc:2" \
--run "SPK-SV"
