#!/bin/bash

namespace=$1
host=$(oc get route -n ${namespace} mq-spring-app -ojson | jq -r .spec.host)
curl https://$host/api/send-hello-world
