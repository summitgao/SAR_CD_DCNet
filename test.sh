#!/usr/bin/env sh
set -e
./build/tools/caffe test --model=./examples/DCNet/prototxt_files/test_dcnet.prototxt --weights=./examples/DCNet/snapshot/solver_dcnet_iter_20000.caffemodel -iterations=2783 -gpu=0  2>&1 | tee ./examples/DCNet/info/test.log
