#!/bin/bash
oc project datapower
set +e
oc delete DataPowerService dev1
oc delete Service dev1-service
oc delete Route dproute
oc delete Secret admin-credentials
set +e 

oc create secret generic admin-credentials --from-literal=password=password
oc create configmap foobar-config --from-file=foobar.cfg
oc apply -f dev1-dp-service.yaml
oc apply -f dev1-dp-route.yaml
oc apply -f dev1-dp.yaml
