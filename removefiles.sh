#!/bin/bash

find . -name "*.hkl" -or -name "*.csv" | xargs rm

find . -name "*slurm*err" -or -name "*slurm*out" | xargs rm

<<<<<<< HEAD
rm -r mountains missingData.csv

cd session01

rm binData.hdf logs.txt slist.txt VirtualMaze*
=======
rm -r mountains

cd session01

rm binData.hdf logs.txt missingData.csv slist.txt VirtualMaze*
>>>>>>> 75332ab5f2cb39647a0ebe3fc4ce7fa83d1be52e

cd ..

