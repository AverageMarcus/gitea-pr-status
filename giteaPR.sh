#!/bin/sh

REPO=$1
SHA=$2
STATE=$3

CONTEXT=${CONTEXT:-Tekton}
DESCRIPTION=${DESCRIPTION:-PR Pipeline}

echo "Repo: ${REPO}"
echo "SHA: ${SHA}"
echo "State: ${STATE}"

curl -X "POST" \
  "https://${GITEA_HOST}/api/v1/repos/${REPO}/statuses/${SHA}?access_token=${ACCESS_TOKEN}" \
  -H 'Content-Type: application/json; charset=utf-8' \
  -d $'{
    "state": "'$STATE'",
    "context": "'$CONTEXT'",
    "description": "'$DESCRIPTION'"
  }'
