#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars"
TOKEN="BAhJIiU0MzljN2EwZDg3NTA0MDUwMjkyOGEzMzkxY2VhYjNjZAY6BkVG--4144abdfa739951ffbfd0d8306279fbbff7b5caa"
MAKEID=22
MODEL="fastCar"
YEAR=2012
LABEL="Jenn's car"

# params.require(:car).permit(:make_id, :model, :year, :label)


curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "car": {
      "make_id": "'"${MAKEID}"'",
      "model": "'"${MODEL}"'",
      "year": "'"${YEAR}"'",
      "label": "'"${LABEL}"'"

    }
  }'

echo
