#!/bin/bash
declare -a libraries=("bazel" "boost" "flann" "flatbuffers" "pcl" "tensorflow" "RTI-DDS")

rm -rf ${1}/unzipped
mkdir ${1}/unzipped

for lib in ${libraries[@]}; do
   mkdir ${1}/unzipped/${lib}
   find ${1}/${lib}/ -name "*.zip" -exec unzip {} -d ${1}/unzipped/${lib} ';'
done
