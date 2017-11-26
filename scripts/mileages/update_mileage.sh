
#!/bin/bash
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/mileages/1"
TOKEN="BAhJIiU4MzYxZjgwNTQ3M2ViODFjMjJkZTExOGI5ZmQ4MTNjMwY6BkVG--955a9074db5a19175a3a30731061bb0208c70d09"
CARID=3
PURCHASEDATE='2001-02-03'
GALLONSOFGAS=50
TRIPMILES=200
PRICEOFGAS=2.50
USERID=2


curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "mileage": {
      "car_id": "'"${CARID}"'",
      "purchase_date": "'"${PURCHASEDATE}"'",
      "gallons_of_gas": "'"${GALLONSOFGAS}"'",
      "trip_miles": "'"${TRIPMILES}"'",
      "price_of_gas": "'"${PRICEOFGAS}"'"
        }
  }'

echo
