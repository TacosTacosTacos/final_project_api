API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars"
TOKEN="BAhJIiVjYzgxYTMzYTNlZDkyMjI3NzkyNDY1NmNlY2MwMzc5YgY6BkVG--18a103b61db3e3d39cc342d6958b207c300ed0b1"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
