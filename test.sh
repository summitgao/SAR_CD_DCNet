#!/usr/bin/env sh
set -e
./build/tools/caffe test --model=./examples/DCNet/prototxt_files/test_dcnet.prototxt --weights=./examples/DCNet/snapshot/solver_dcnet_iter_20000.caffemodel -iterations=2783 -gpu=0  2>&1 | tee ./examples/DCNet/info/test.log

#./caffe-master/build/tools/caffe test --model=./prototxt_files/test_paviau.prototxt --weights=./snapshot/paviau/_iter_20000.caffemodel -iterations=2096 -gpu=0   # for the University of Pavia image

#./caffe-master/build/tools/caffe test --model=./prototxt_files/test_salinas.prototxt --weights=./snapshot/salinas/_iter_20000.caffemodel -iterations=1077 -gpu=0   # for the Salinas image
