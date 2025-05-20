#!/bin/bash
# This file contains all commands used in the Google Cloud Console and Cloud Shell Lab

# Task 3: Creating Cloud Storage bucket via Cloud Shell
# Replace [BUCKET_NAME] with a globally unique name
gcloud storage buckets create gs://[BUCKET_NAME]

# Task 4: Uploading and copying files to Cloud Storage bucket
# List files to confirm upload
ls
# Copy file to bucket - replace [MY_FILE] and [BUCKET_NAME] with appropriate values
gcloud storage cp [MY_FILE] gs://[BUCKET_NAME]
# Note: If filename has whitespaces, use quotes: gcloud storage cp 'my file.txt' gs://[BUCKET_NAME]

# Task 5: Setting up persistent environment in Cloud Shell
# List available regions
gcloud compute regions list

# Creating environment variables
INFRACLASS_REGION=[YOUR_REGION]
echo $INFRACLASS_REGION

# Creating directory and config file for persistence
mkdir infraclass
touch infraclass/config

# Adding environment variables to config file
echo INFRACLASS_REGION=$INFRACLASS_REGION >> ~/infraclass/config

# Setting Project ID variable
INFRACLASS_PROJECT_ID=[YOUR_PROJECT_ID]
echo INFRACLASS_PROJECT_ID=$INFRACLASS_PROJECT_ID >> ~/infraclass/config

# Source the config file to set environment variables
source infraclass/config
echo $INFRACLASS_PROJECT_ID

# Add source command to .profile for persistence
# Command used in nano: source infraclass/config
# Edit .profile
nano .profile
# Verify variables are set after reopening Cloud Shell
echo $INFRACLASS_PROJECT_ID
