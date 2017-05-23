#!/bin/sh
API="http://localhost:4741"
URL_PATH="/pages"
TOKEN="g4jpJ9kJWgjnzPMQvnMn0GdccULzhGQWDlp00z6wA0k=--u/XESr/mOzsByxNG2CtxtwDAjPmVWnTmosqFPv+SNzA="


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
