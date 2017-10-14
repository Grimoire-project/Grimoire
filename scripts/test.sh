#!/bin/bash

export GRIMOIRE_ISTESTING=true
set -o pipefail
swift test 2>&1 | xcpretty -t
