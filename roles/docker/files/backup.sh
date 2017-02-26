TIMESTAMP=date +%Y-%m-%d-%H%M%S
FILE_NAME=$TIMESTAMP.tar.gz
BUCKET_NAME=

# Backup
docker run --rm --volume jenkins_jenkins-data:/jenkins_data --volume /var/backups/jenkins:/backup ubuntu tar cvzf /backup/$FILE_NAME /jenkins_data --exclude=/jenkins_data/workspace

# Upload to s3
aws s3 cp /var/backups/jenkins/$FILE_NAME s3://$BUCKET_NAME/$FILE_NAME

# Clear old backups