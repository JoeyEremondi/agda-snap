#!/bin/sh

# Script to copy the standard library and PLFA sources to a common repo

mkdir -p $SNAP_USER_COMMON/agda-dir
# Copy the standard library
cp -r $SNAP/agda-stdlib $SNAP_USER_COMMON/agda-dir
# Copy PLFA
cp -r $SNAP/plfa $SNAP_USER_COMMON/agda-dir
# Generate the libraries and defaults file
echo "$SNAP_USER_COMMON/agda-dir/agda-stdlib/standard-library.agda-lib" >> $SNAP_USER_COMMON/agda-dir/libraries
echo "$SNAP_USER_COMMON/agda-dir/plfa/src/plfa.agda-lib" >> $SNAP_USER_COMMON/agda-dir/libraries
echo "standard-library" >> $SNAP_USER_COMMON/agda-dir/defaults
echo "plfa" >> $SNAP_USER_COMMON/agda-dir/defaults
