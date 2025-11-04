#!/bin/bash

# https://community.st.com/t5/stm32cubeide-mcus/cubeide-does-not-start-and-spawner-reaper/td-p/685814
ulimit -n 8192

additional_build_args=""

defines="${3}"
for prepoc_define in $defines
do
  additional_build_args="${additional_build_args} -D \"${prepoc_define}\""
done


stm32cubeide --launcher.suppressErrors -no-indexer -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data /tmp/stm-workspace -importAll "$1"
echo "Building '$2' with additonal args: '$additional_build_args'."
headless-build.sh -no-indexer -data /tmp/stm-workspace -build "$2" $additional_build_args
