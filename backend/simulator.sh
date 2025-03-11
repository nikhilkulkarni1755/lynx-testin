#!/bin/bash

# Step 1: Reset simulator memory
echo "Resetting simulator memory..."
xcrun simctl erase all

# Step 2: Boot the simulator
echo "Booting iPhone 14 Pro Max for 60 seconds"
xcrun simctl boot "iPhone 14 Pro Max"
open -a Simulator

# Step 3: Run for 10 minutes
echo "Session started. Running for 60 seconds"
sleep 60

# Step 4: Shut down the simulator properly
echo "Time's up! Shutting down the simulator..."
xcrun simctl shutdown all
osascript -e 'quit app "Simulator"'

echo "Simulator session has ended."