#!/bin/bash

# Mount s3 bucket from environment variable
mkdir -p $S3_LOCATION
s3fs $S3_BUCKET $S3_LOCATION -o url=$S3_ENDPOINT_URL

# Keep it running
tail -f /dev/null
