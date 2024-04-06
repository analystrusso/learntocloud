#!/bin/bash

# set name of bucket
bucket_name="clouduploaderbucket"

# set the sourcedirectory
sourcedir="C:\Users\adamj\Documents\LearntoCloud\learntocloud\sourcedir"

# copy files to s3 bucket
aws s3 cp "$sourcedir" "s3://$bucket_name/" --recursive

#check if copy was successful
if [ $? -eq 0 ]; then
	echo "File or directory uploaded successfully to $bucket_name."
else 
	echo "Failed to upload file or directory to $bucket_name."
fi
