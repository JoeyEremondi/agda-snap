#!/bin/bash


#  Assign the agda directories to defaults if they're not already set
if [ -z "${AGDA_DIR+x}" ]; then
  # If there's no AGDA_DIR explicitly set, and the default one hasn't been created,
  # then create it and initialize the stdlib and plfa
  if [ ! -d "agda" ]; then
    $SNAP/bin/agda-setup-stdlib-plfa.sh
  fi
  export AGDA_DIR=$SNAP_USER_COMMON/agda-dir
fi


if [ -z "${Agda_datadir+x}" ]; then
  mkdir -p $SNAP_USER_COMMON/agda_data
  export Agda_datadir=$SNAP_USER_COMMON/agda_data
fi


# Make temp directory outside of the snap's container fs
mkdir -p $SNAP_USER_COMMON/tmp
export TMPDIR=$SNAP_USER_COMMON/tmp

# Make directory to put compile artifacts
mkdir -p $SNAP_USER_COMMON/_build


$SNAP/bin/agda --compile-dir="$SNAP_USER_COMMON/_build" "$@"
