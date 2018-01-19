#!/bin/bash
# 'MoveOutput.sh'
#
# Use this to move Condor output files to the repository directory
# AFTER renaming the files.

repdir="/data/smgroup/sm0/DerekAnderson/pythia/pythia8185/GammaJetData/Pythia23_New"
output="/data/smgroup/sm0/DerekAnderson/pythia/pythia8185/output1"
prefix="Pythia23.gNew"
suffix=".root"
iStart=100

printf "Moving files..."

cd $output
for i in `seq 0 99`; do
  cd run$i
  iRun=$(expr "$iStart" + "$i")
  file=$prefix$iRun$suffix
  printf "\n  run$i: moving file '$file'"
  cp $file $repdir
  cd ..
done

printf "\nFinished!\n"
