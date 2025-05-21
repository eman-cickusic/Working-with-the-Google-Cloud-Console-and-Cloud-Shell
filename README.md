# Working with the Google Cloud Console and Cloud Shell

This repository documents my completion of a hands-on lab working with Google Cloud Console and Cloud Shell environments. The lab focused on becoming familiar with both the graphical user interface (Cloud Console) and command-line interface (Cloud Shell) of Google Cloud Platform.

## Video

https://youtu.be/43FwhqVg3fI


## Overview 

In this lab, I explored:
- The Google Cloud web-based interface
- Creating Cloud Storage buckets through multiple methods
- Cloud Shell features including file upload and persistent environment variables
- Best practices for working with Google Cloud interfaces

## Lab Tasks Completed

1. ✅ Used the Cloud Console to create a Cloud Storage bucket
2. ✅ Accessed and explored Cloud Shell features
3. ✅ Used Cloud Shell to create a second Cloud Storage bucket
4. ✅ Uploaded files to Cloud Shell and copied to Storage buckets
5. ✅ Created persistent environment variables in Cloud Shell

## Key Learnings

### Cloud Console Benefits
- Provides quick execution of common Google Cloud actions
- Performs multiple actions on your behalf with a few clicks
- Offers only valid options through menus, reducing errors
- Validates configuration before submitting changes

### Cloud Shell Features
- Provides a temporary Compute Engine VM
- Command-line access via browser
- 5 GB of persistent disk storage in $HOME directory
- Pre-installed tools: gcloud, gcloud storage, kubectl, bq
- Support for multiple programming languages
- Built-in authorization for Google Cloud resources

## Setting Up Environment Variables

I learned to create persistent environment variables in Cloud Shell by:

1. Creating a configuration directory:
```bash
mkdir infraclass
```

2. Creating a config file:
```bash
touch infraclass/config
```

3. Setting up region and project ID variables:
```bash
echo INFRACLASS_REGION=$INFRACLASS_REGION >> ~/infraclass/config
echo INFRACLASS_PROJECT_ID=$INFRACLASS_PROJECT_ID >> ~/infraclass/config
```

4. Modifying .profile for persistence:
```bash
# Add to .profile
source infraclass/config
```

## Files in this Repository

- `README.md`: This documentation file
- `commands.sh`: All commands used during the lab
- `create_bucket_script.sh`: Script to create Cloud Storage buckets
- `setup_persistent_env.sh`: Script to set up persistent environment variables

## When to Use Cloud Console vs Cloud Shell

- **Cloud Console**: Best for quick tasks, exploration, and reduced chance of errors
- **Cloud Shell**: Ideal for detailed control, full range of options, and automation through scripting

## Conclusion

This lab provided hands-on experience with both the graphical and command-line interfaces of Google Cloud Platform. I learned how to effectively use both interfaces, create and manage Cloud Storage buckets, and set up persistent environment variables for more efficient cloud resource management.
