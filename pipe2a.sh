#!/bin/bash

# first job - no dependencies, called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
jid1=$(sbatch /data/src/PyHipp/rplparallel-slurm.sh)

# process spike sorting
jid6=$(sbatch /data/src/PyHipp/rse-slurm.sh)

# second set of jobs - no dependencies, called from the day directory
jid2=$(sbatch --dependency=afterok:${jid6##* } /data/src/PyHipp/rs1a-slurm.sh)
jid3=$(sbatch --dependency=afterok:${jid6##* } /data/src/PyHipp/rs2a-slurm.sh)
jid4=$(sbatch --dependency=afterok:${jid6##* } /data/src/PyHipp/rs3a-slurm.sh)
jid5=$(sbatch --dependency=afterok:${jid6##* } /data/src/PyHipp/rs4a-slurm.sh)

