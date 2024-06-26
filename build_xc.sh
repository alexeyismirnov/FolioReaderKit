#!/bin/bash

rm -rf ./build
mkdir build

xcodebuild archive -workspace FolioReaderKit.xcworkspace  -scheme FolioReaderKit -sdk iphoneos -archivePath "./build/ios_devices.xcarchive" BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO

xcodebuild archive -workspace FolioReaderKit.xcworkspace  -scheme FolioReaderKit -arch arm64 -sdk iphonesimulator -archivePath "./build/ios_simulator.xcarchive" BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO

xcodebuild -create-xcframework -framework ./build/ios_devices.xcarchive/Products/Library/Frameworks/FolioReaderKit.framework -framework ./build/ios_simulator.xcarchive/Products/Library/Frameworks/FolioReaderKit.framework -output ./build/FolioReaderKit.xcframework


