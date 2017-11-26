#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/mileages/"
MILEAGE_ID=2
TOKEN="BAhJIiU4MzYxZjgwNTQ3M2ViODFjMjJkZTExOGI5ZmQ4MTNjMwY6BkVG--955a9074db5a19175a3a30731061bb0208c70d09"

curl "${API}${URL_PATH}/${MILEAGE_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
