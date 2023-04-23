#!/bin/bash

if which swiftlint >/dev/null; then
  config_path="../.swiftlint.yml"
  swiftlint autocorrect --config $config_path
  swiftlint lint --config $config_path
else
  echo "Warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
