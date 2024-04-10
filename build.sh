#!/bin/bash

make -C src/cat/ all
build_result=$?
if [ $build_result -ne 0 ]; then
    curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"Cat build failed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage
    exit 1
fi

make -C src/grep/ all
build_result=$?
if [ $build_result -ne 0 ]; then
    curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"Grep build failed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage
    exit 1
fi
