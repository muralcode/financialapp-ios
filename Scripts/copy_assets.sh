#!/bin/bash
#future script to copy assets into the app instead of being inside app from cloning
# mural-asset-generator is a project to create and generate app assets for the main app]
# asset-generator is written in Python and will form be part of this application.
echo "Copying assets to financialapp-ios..."
cp -r ../mural-asset-generator/output/ios/financialapp../ios/
cp -r ../mural-asset-generator/output/ios/ReleaseNotes../ios/
echo "Assets copied to financialapp-ios"
