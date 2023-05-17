#!/bin/sh

PROJECT_NAME="Your Project"
SCHEME_NAME="Your Project Scheme"

# Build for iOS
xcodebuild -project ${PROJECT_NAME}.xcodeproj -scheme ${SCHEME_NAME} -destination 'generic/platform=iOS' -configuration Release -archivePath ./build/ios_arm64 archive SKIP_INSTALL=NO

# Build for iOS Simulator
xcodebuild -project ${PROJECT_NAME}.xcodeproj -scheme ${SCHEME_NAME} -destination 'generic/platform=iOS Simulator' -configuration Release -archivePath ./build/iossimulator archive SKIP_INSTALL=NO

# Build for macOS
xcodebuild -project ${PROJECT_NAME}.xcodeproj -scheme ${SCHEME_NAME} -destination 'generic/platform=macOS' -configuration Release -archivePath ./build/macos archive SKIP_INSTALL=NO

# Build for Mac Catalyst
xcodebuild -project ${PROJECT_NAME}.xcodeproj -scheme ${SCHEME_NAME} -destination 'generic/platform=macOS,variant=Mac Catalyst' -configuration Release -archivePath ./build/maccatalyst archive SKIP_INSTALL=NO

# Create xcframework
xcodebuild -create-xcframework \
-framework ./build/ios_arm64.xcarchive/Products/Library/Frameworks/${PROJECT_NAME}.framework \
-framework ./build/iossimulator.xcarchive/Products/Library/Frameworks/${PROJECT_NAME}.framework \
-framework ./build/macos.xcarchive/Products/Library/Frameworks/${PROJECT_NAME}.framework \
-framework ./build/maccatalyst.xcarchive/Products/Library/Frameworks/${PROJECT_NAME}.framework \
-output ./build/${PROJECT_NAME}.xcframework



