#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
mkdir build_googletest
cd build_googletest
#RELPATH_TO_IOS_CMAKE=$(python -c "import os.path; print os.path.relpath(${SCRIPT_DIR}/ios-cmake, ${PWD})")
cmake ../common -DCMAKE_TOOLCHAIN_FILE=${SCRIPT_DIR}/common/ios-cmake/ios.toolchain.cmake -DIOS_PLATFORM=SIMULATOR64
make
