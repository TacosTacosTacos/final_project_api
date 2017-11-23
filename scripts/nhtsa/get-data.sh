#!/bin/bash
MAKE_ID=474
YEAR=2017

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/nhtsa"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --data '{
    "user_input": {
      "year": "'"${YEAR}"'",
      "make_id": "'"${MAKE_ID}"'"
    }
  }'
echo
