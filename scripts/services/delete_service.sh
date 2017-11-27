#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/services/"
SERVICE_ID=2
TOKEN="BAhJIiVkN2EyNjBlNGYzODBmYjY4NmJhMWM2YWQ0MGYxZmMzMQY6BkVG--b0982286404f2538dde1caa6f56df23d3ac92141"

curl "${API}${URL_PATH}/${SERVICE_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
