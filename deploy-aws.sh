#!/bin/bash
# * This file is maded to deploy the application on the Custom AWS server.
source parse_params.sh
source load_env.sh

AWSKEY=<PATH_TO_YOUR_PRIVATE_KEY>.pem
DNS=ubuntu@<IP_EC2>.sa-east-1.compute.amazonaws.com
zipfile=<FILENAME>.$VERSION.zip
zipfolder=<FOLDER>/$zipfile


# * make sure downloads/ and out/ folder exits on server

scp -i $AWSKEY $zipfolder $DNS:~/downloads


ssh -i $AWSKEY $DNS << ENDSSH

rm -rf out  /*
unzip downloads/$zipfile -d ~/out
rm downloads/$zipfile
ENDSSH

echo 'Execution finished'