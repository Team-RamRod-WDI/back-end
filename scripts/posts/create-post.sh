#!/bin/sh
API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="g4jpJ9kJWgjnzPMQvnMn0GdccULzhGQWDlp00z6wA0k=--u/XESr/mOzsByxNG2CtxtwDAjPmVWnTmosqFPv+SNzA="
TITLE="Hey"
CONTENT="Me"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "post": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'"
    }
  }'
echo
