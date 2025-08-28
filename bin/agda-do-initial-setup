#!/bin/sh

if [ -d ~/.config/agda ]; then
  echo "~/.config/agda" exists
  if [ ! -z "$( ls -A ~/.config/agda )" ]; then
    echo "~/.config/agda is not empty, aborting setup"
    exit 1
  else
    echo "~/.config/agda is empty"
  fi
fi


mkdir -p ~/.config/agda
echo "Copying stdlib (might take several minutes)..."
cp -r /snap/agda-stdlib-plfa/current/agda-stdlib ~/.config/agda/
echo "Copied stdlib"
echo "Copying plfa..."
cp -r /snap/agda-stdlib-plfa/current/plfa ~/.config/agda/
echo "Copied plfa"


echo "Writing libraries"
echo "~/.config/agda/agda-stdlib/standard-library.agda-lib" >> ~/.config/agda/libraries
echo "~/.config/agda/plfa/src/plfa.agda-lib" >> ~/.config/agda/libraries

echo "standard-library" >> ~/.config/agda/defaults
echo "plfa" >> ~/.config/agda/defaults
