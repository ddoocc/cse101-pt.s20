#!/bin/bash
# cse101-pt.s20
# usage: pa5.sh
# (run within your pa1 directory to test your code)

SRCDIR=https://raw.githubusercontent.com/houi-lin/cse101-pt.s20/master/pa5

EXE_ALL=( pa1-func-check.sh pa1-unit-check.sh pa1-make-check.sh )
EXE_RANGE=$((${#EXE_ALL[*]} - 1))
echo $EXE_RANGE
for i in $(seq 0 $EXE_RANGE); do
  curl $SRCDIR/${EXE_ALL[i]} > ${EXE_ALL[i]}
  chmod +x ${EXE_ALL[i]}
  ./${EXE_ALL[i]}
  rm -f ${EXE_ALL[i]}
done
