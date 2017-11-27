#!/bin/bash
TEXT="Other"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/service_types"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "service_type": {
      "name": "'"${TEXT}"'"
    }
  }'

echo
