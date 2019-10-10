#!/usr/bin/env sh

./build/tools/caffe train --solver=./examples/DCNet/prototxt_files/solver_dcnet.prototxt 2>&1 |tee ./examples/DCNet/log/mycaffe.log$@