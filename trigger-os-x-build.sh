#!/bin/bash

curl \
  --header "Content-Type: application/json" \
  --data "{'build_parameters': {'GIT_REVISION': $CIRCLE_SHA1}}" \
  --request POST \
  "https://circleci.com/api/v1/project/facebook/osx-project?circle-token=$CIRCLE_TOKEN"