#!/bin/bash
# This is a shell script that is used to correctly compile your legato application from within vscode's task. 
LEGATO_ROOT="example" #Change This For Your System - This is where the legato directory is installed($LEGATO_ROOT")
ADEF_FILE="example"#Change This For Your System - This is the adef file that should be sitting in the root of your legato app and is used by the build system in order to compile 
pushd . 
cd $LEGATO_ROOT || exit
source ./bin/configlegatoenv  
popd
mkapp -t wp76xx $ADEF_FILE
