#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)
WORK_DIR=build_common_ios
mkdir $WORK_DIR
cd $WORK_DIR
#RELPATH_TO_IOS_CMAKE=$(python -c "import os.path; print os.path.relpath(${SCRIPT_DIR}/ios-cmake, ${PWD})")
cmake ../common -DCMAKE_TOOLCHAIN_FILE=${SCRIPT_DIR}/common/ios-cmake/ios.toolchain.cmake -DIOS_PLATFORM=SIMULATOR64
make
