#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars/"
CAR=2
TOKEN="BAhJIiU0MzljN2EwZDg3NTA0MDUwMjkyOGEzMzkxY2VhYjNjZAY6BkVG--4144abdfa739951ffbfd0d8306279fbbff7b5caa"

curl "${API}${URL_PATH}/${CAR}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
