#!/bin/bash

stm32cubeide --launcher.suppressErrors -no-indexer -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data /tmp/stm-workspace -importAll "$1"
headless-build.sh -no-indexer -data /tmp/stm-workspace -build "$2"
