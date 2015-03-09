#!/bin/bash

versionNumber=$(cat VERSION)

rm -rf build
mkdir -p build/src
cp -r --parents chrome/ components/ defaults/ modules/ platform/ chrome.manifest install.rdf build/src

cd build/src/chrome/Echofon
zip -r -9 ../Echofon.jar *
cd ..
rm -rf Echofon

cd ..
zip -r -9 ../echofon_for_twitter-$versionNumber.xpi *