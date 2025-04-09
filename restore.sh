#!/bin/bash

JENKINS_HOME="/var/lib/jenkins"
RESTORE_DIR="/tmp/jenkins_restore"
# S3_BUCKET="s3://jenkins-backup-yourname"  # Replace with your actual bucket name
S3_BUCKET="s3://jenkins-backup-miqubal"
LATEST_BACKUP=$(aws s3 ls $S3_BUCKET/ | sort | tail -n 1 | awk '{print $4}')

mkdir -p $RESTORE_DIR
aws s3 cp $S3_BUCKET/$LATEST_BACKUP $RESTORE_DIR

tar -xzvf $RESTORE_DIR/$LATEST_BACKUP -C /
