#!/bin/bash
# Script to set up persistent environment variables in Cloud Shell
# Usage: ./setup_persistent_env.sh [REGION] [PROJECT_ID]

# Check if both arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error: Both REGION and PROJECT_ID are required"
  echo "Usage: ./setup_persistent_env.sh [REGION] [PROJECT_ID]"
  
  # If region is missing, show available regions
  if [ -z "$1" ]; then
    echo "\nAvailable regions:"
    gcloud compute regions list | grep -v "NAME"
  fi
  
  exit 1
fi

REGION=$1
PROJECT_ID=$2

# Create directory for configuration
mkdir -p ~/infraclass

# Create or overwrite config file
cat > ~/infraclass/config << EOF
# Google Cloud environment variables
INFRACLASS_REGION=$REGION
INFRACLASS_PROJECT_ID=$PROJECT_ID
EOF

echo "Environment variables file created at ~/infraclass/config"

# Source the file to set variables in current session
source ~/infraclass/config

# Check if variables are set correctly
echo "Verifying environment variables:"
echo "INFRACLASS_REGION = $INFRACLASS_REGION"
echo "INFRACLASS_PROJECT_ID = $INFRACLASS_PROJECT_ID"

# Add to .profile if not already there
if grep -q "source infraclass/config" ~/.profile; then
  echo "Configuration sourcing already in .profile, no changes made."
else
  echo -e "\n# Auto-source Google Cloud environment variables\nsource infraclass/config" >> ~/.profile
  echo "Added configuration sourcing to .profile"
fi

echo -e "\nSetup complete. Your environment variables will persist across Cloud Shell sessions."
echo "To update variables in the future, edit ~/infraclass/config or run this script again."
