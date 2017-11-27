API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/services"
TOKEN="BAhJIiVkN2EyNjBlNGYzODBmYjY4NmJhMWM2YWQ0MGYxZmMzMQY6BkVG--b0982286404f2538dde1caa6f56df23d3ac92141"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
