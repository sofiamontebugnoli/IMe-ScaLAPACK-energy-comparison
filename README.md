# IMe-ScaLAPACK-energy-comparison
This paper explores a monitoring solution for the energy values detected during the execution of two parallel algorithms for the solution of linear systems: the Inhibition Method and Gaussian Elimination from ScaLAPACK library above Marconi A3 HPC system by CINECA. Using Intel Skylake processors composed by 2 sockets of 24 cores each (48 cores in total)-
## Pre requirements

## Execute the code
In order to execute the code is necessary to load these modules:
- `env-skl/1.0`;
- `openmpi/3.0.0--gnu--7.3.0`;
- `papi/6.0.0`;
On Marconi architecture it is possible use the .sourceme file in order to load them correctly

Now it is possible to run `tester` executable with the correct configuration as showed in `launcher.sh`,  which is an example of a configuration used to run the tests. 
It is possible to run launcher.sh by submitting it to SLURM with:

```sbatch launcher.sh```

