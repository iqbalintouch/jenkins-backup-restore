#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
BACKUP_DIR="/tmp/jenkins_backup"
TIMESTAMP=$(date +%F-%H-%M)
# S3_BUCKET="s3://jenkins-backup-yourname" # Replace 'yourname' with your actual name or bucket suffix
S3_BUCKET="s3://jenkins-backup-miqubal"  

mkdir -p $BACKUP_DIR
tar -czvf $BACKUP_DIR/jenkins_backup_$TIMESTAMP.tar.gz $JENKINS_HOME

aws s3 cp $BACKUP_DIR/jenkins_backup_$TIMESTAMP.tar.gz $S3_BUCKET
