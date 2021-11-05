#!/bin/bash

namespace=$1
host=$(oc get route -n ${namespace} mq-spring-app -ojson | jq -r .spec.host)
curl -kv -H 'content-type: application/json' https://${host}/api/send-json -d @data.json
