#!/bin/bash

cd src/cat/
make test
test_result=$?
if [ $test_result -ne 0 ]; then
    echo "Tests failed"
    curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"Integration tests failed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage
    exit 1
fi

cd ../grep/
make test
test_result=$?
if [ $test_result -ne 0 ]; then
    echo "Tests failed"
    curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"Integration tests failed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage
    exit 1
fi

echo "Tests were successful"
curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"CI stage completed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage