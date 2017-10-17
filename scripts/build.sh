#!/bin/bash

if [ -z $CONFIGURATION ]; then
    CONFIGURATION="debug"
fi

echo "Building grimoire with configuration $CONFIGURATION"

export GRIMOIRE_ISTESTING=false
swift build --disable-sandbox -c $CONFIGURATION
