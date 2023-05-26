#!/bin/bash

set -eo pipefail

xcodebuild -workspace Calculator.xcworkspace \
            -scheme Calculator\ iOS \
            -destination platform=iOS\ Simulator,OS=16.1,name=iPhone\ 14 \
            clean test | xcpretty