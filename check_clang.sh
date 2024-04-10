#!/bin/bash

cd src
clang-format --dry-run --Werror --verbose cat/*.[ch] grep/*.[ch] common/*.[ch] || (curl -X POST -H "Content-Type: application/json" -d "{\"chat_id\": \"1537823305\", \"text\": \"Style test failed\"}" https://api.telegram.org/bot7043988482:AAFL--VFfN5C2FcH-m2zvABCeVQ4ogQoH7E/sendMessage  && exit 1)
