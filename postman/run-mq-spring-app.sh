#!/bin/bash

namespace=$1

newman run mq-spring-app.postman_collection.json --env-var "base-url=https://$(oc get route -n ${namespace} mq-spring-app -ojson | jq -r .spec.host)"

