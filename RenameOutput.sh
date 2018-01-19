#!/bin/bash
# 'RenameOutput.sh'
#
# Use this to rename the Condor output files.


output="/data/smgroup/sm0/DerekAnderson/pythia/pythia8185/output1"
prefix="Pythia23.gNew"
suffix=".root"
iStart=100

printf "Renaming output..."

cd $output
for i in `seq 0 99`; do
  cd run$i
  iNew=$(expr "$iStart" + "$i")
  old=$prefix"0"$suffix
  new=$prefix$iNew$suffix
  printf "\n  run$i: '$old' --> '$new'"
  mv $old $new
  cd ..
done

printf "\nFinished!\n"
