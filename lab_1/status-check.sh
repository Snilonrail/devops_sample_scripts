#!/bin/bash

response=$(curl -s -o /dev/null -w "%{http_code}" "http://nginx")

if [[ $response != 2* && $response != 3* ]]; then
  echo "$(date): Server response code: $response" >> /logs/nginx-status.log
else
  echo "$(date): Success: $response" >> /logs/nginx-status.log
fi