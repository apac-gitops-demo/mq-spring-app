#!/bin/bash

namespace=$1
host=$(oc get route -n ${namespace} mq-spring-app -ojson | jq -r .spec.host)
curl -k -H 'accept: application/json' -H 'content-type: application/json' https://${host}/api/recv