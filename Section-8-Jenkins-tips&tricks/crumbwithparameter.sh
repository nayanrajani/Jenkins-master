crumb=$(curl -u "trigger:123456" -s 'http://192.168.1.9:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
curl -u "trigger:123456" -H "$crumb" -X POST http://192.168.1.9:8080/job/upload-backup-s3-jenkins/buildWithParameters?MYSQL_HOST=db_host&DATABASE_NAME=testdb&AWS_BUCKET_NAME=jenkins-mysql-backup-training