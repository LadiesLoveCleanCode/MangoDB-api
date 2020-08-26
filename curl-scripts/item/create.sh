#!/bin/bash

API="http://localhost:4741"
URL_PATH="/items"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "item": {
      "category": "'"${CATEGORY}"'",
      "product": "'"${PRODUCT}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
