#!/bin/bash

# Clean Gazebo Cache and Restart
# Use this if experiencing glitches or teleporting issues

echo "Cleaning Gazebo cache..."

# Kill any running Gazebo instances
killall gz 2>/dev/null
killall ruby 2>/dev/null
sleep 1

# Clear Gazebo cache
rm -rf ~/.gz/sim/log/*
rm -rf /tmp/gz-sim-*

echo "Cache cleared!"
echo ""
echo "Now you can restart Gazebo:"
echo "  gz sim -r sauvc_final.world"
echo ""
echo "Or with verbose output:"
echo "  gz sim -v 3 -r sauvc_final.world"
