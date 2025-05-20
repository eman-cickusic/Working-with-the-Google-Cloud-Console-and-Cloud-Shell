# Google Cloud Console and Cloud Shell Lab Notes

## Lab Overview
This lab provided hands-on experience with Google Cloud console (GUI) and Cloud Shell (CLI). Both interfaces have unique advantages and use cases when working with Google Cloud resources.

## Key Concepts

### Cloud Console
- Web-based graphical interface for Google Cloud
- Continuously developed with occasional layout changes
- Performs most (but not all) common Google Cloud actions
- Extremely fast for many activities - performs multiple actions behind the scenes
- Reduces errors by offering only valid options through menus
- Validates configuration before submitting changes

### Cloud Shell
- Command-line interface for Google Cloud
- Provides a temporary Compute Engine VM
- Accessible through the browser
- Includes 5 GB of persistent disk storage in $HOME directory
- Pre-installed with Cloud SDK and other tools:
  - gcloud (Google Cloud SDK)
  - gcloud storage (Cloud Storage)
  - kubectl (Kubernetes Engine)
  - bq (BigQuery)
- Supports Java, Go, Python, Node.js, PHP, and Ruby
- Includes web preview functionality
- Has built-in authorization for resources and instances
- VM is recycled after 1 hour of inactivity
- Only the /home directory persists between sessions

## Step-by-Step Lab Procedures

### Task 1: Creating a Cloud Storage Bucket via Console
1. Navigated to Cloud Storage > Buckets in the console
2. Clicked Create
3. Entered a globally unique bucket name
4. Accepted default settings
5. Clicked Create
6. Confirmed "Public access will be prevented" when prompted

### Task 2: Accessing Cloud Shell
1. Clicked Activate Cloud Shell from the Cloud Console
2. Explored Cloud Shell toolbar options:
   - Minimize
   - Restore/Maximize
   - Open in new window
   - Close terminal

### Task 3: Creating a Cloud Storage Bucket via Cloud Shell
1. Opened Cloud Shell
2. Used command: `gcloud storage buckets create gs://[BUCKET_NAME]`
3. Verified bucket creation in Cloud Console

### Task 4: Exploring Cloud Shell Features
1. Used Cloud Shell upload function to upload a local file
2. Verified upload with `ls` command
3. Copied file to bucket with: `gcloud storage cp [MY_FILE] gs://[BUCKET_NAME]`
4. Explored additional Cloud Shell toolbar options

### Task 5: Creating Persistent State in Cloud Shell
1. Listed available regions: `gcloud compute regions list`
2. Created environment variable: `INFRACLASS_REGION=[YOUR_REGION]`
3. Verified variable: `echo $INFRACLASS_REGION`
4. Created a directory: `mkdir infraclass`
5. Created config file: `touch infraclass/config`
6. Added region to config: `echo INFRACLASS_REGION=$INFRACLASS_REGION >> ~/infraclass/config`
7. Created Project ID variable: `INFRACLASS_PROJECT_ID=[YOUR_PROJECT_ID]`
8. Added Project ID to config: `echo INFRACLASS_PROJECT_ID=$INFRACLASS_PROJECT_ID >> ~/infraclass/config`
9. Sourced the config file: `source infraclass/config`
10. Verified Project ID: `echo $INFRACLASS_PROJECT_ID`
11. Modified .profile: Added `source infraclass/config` to end of file
12. Verified persistence after reopening Cloud Shell

## Key Takeaways

- Cloud Console is ideal for:
  - Quick tasks
  - Exploratory work
  - Reducing errors
  - Performing multiple actions at once

- Cloud Shell is perfect for:
  - Detailed control
  - Complete range of options and features
  - Automation through scripting
  - Advanced configurations

- Environment variables in Cloud Shell:
  - Reset when Cloud Shell is recycled
  - Can be made persistent by creating a config file
  - Can be automatically loaded by modifying .profile
