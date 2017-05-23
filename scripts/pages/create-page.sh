#!/bin/sh
API="http://localhost:4741"
URL_PATH="/pages"
TOKEN="Syoz1BuIzAAYlf3Tk+xiqcWlKIAZQS++c+2SrbXlRDw=--DlkbrA85LdWvKm1urp16hfQlHJi8kNJPuvwvW5dEfJ8="
TITLE="Melody's page"
DESCRIPTION="Soon to be Henriquez."

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "page": {
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'
echo
