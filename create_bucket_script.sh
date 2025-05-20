#!/bin/bash
# Script to create Cloud Storage buckets
# Usage: ./create_bucket_script.sh [BUCKET_NAME]

# Check if bucket name is provided
if [ -z "$1" ]; then
  echo "Error: Bucket name is required"
  echo "Usage: ./create_bucket_script.sh [BUCKET_NAME]"
  exit 1
fi

BUCKET_NAME=$1

# Create the bucket
echo "Creating bucket: gs://$BUCKET_NAME"
gcloud storage buckets create gs://$BUCKET_NAME

# Verify the bucket was created
echo "Verifying bucket creation..."
gcloud storage ls gs://$BUCKET_NAME

# Print success message
if [ $? -eq 0 ]; then
  echo "Bucket gs://$BUCKET_NAME was successfully created."
  echo "You can now upload files to this bucket using:"
  echo "gcloud storage cp [FILE_PATH] gs://$BUCKET_NAME/"
else
  echo "There was an issue creating or accessing the bucket."
  echo "Please check the error messages above."
fi
