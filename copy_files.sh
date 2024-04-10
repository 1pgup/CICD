#!/bin/bash

REMOTE_HOST="10.10.0.2"
REMOTE_USER="em"
REMOTE_DIR="/usr/local/bin"

sshpass -p "1" scp -o StrictHostKeyChecking=no src/cat/s21_cat src/grep/s21_grep ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}/
sshpass_result=$?

if [ $sshpass_result -ne 0 ]; then
    curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"CD stage failed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage
    exit 1
fi

curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"CD stage completed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage
