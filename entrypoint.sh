#!/bin/bash

# https://community.st.com/t5/stm32cubeide-mcus/cubeide-does-not-start-and-spawner-reaper/td-p/685814
ulimit -n 8192

stm32cubeide --launcher.suppressErrors -no-indexer -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data /tmp/stm-workspace -importAll "$1"
headless-build.sh -no-indexer -data /tmp/stm-workspace -build "$2"
