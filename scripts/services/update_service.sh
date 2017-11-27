
#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/services/2"
TOKEN="BAhJIiVkN2EyNjBlNGYzODBmYjY4NmJhMWM2YWQ0MGYxZmMzMQY6BkVG--b0982286404f2538dde1caa6f56df23d3ac92141"
CARID=3
SERVICETYPEID=2
SERVICEDATE='2001-02-03'
CURRENTMILEAGE=20000
NOTES='They actually did an OK job'


curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "service": {
      "car_id": "'"${CARID}"'",
      "service_type_id": "'"${SERVICETYPEID}"'",
      "service_date": "'"${SERVICEDATE}"'",
      "current_mileage": "'"${CURRENTMILEAGE}"'",
      "notes": "'"${NOTES}"'"
        }
  }'

echo
