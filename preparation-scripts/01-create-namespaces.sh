#!/bin/bash

set -e  # exit as soon as any command fails

cat ./namespaces-list.txt | grep -Ev "^[ \t]*#|^[ \t]*$" | while read ns; do
  # create NS
  printf "processing %s\n" ${ns:=ns-unset}
  kubectl create namespace $ns
  printf "\t namespace created\n"

  # create service-account and generate a token
  kubectl -n $ns create serviceaccount $ns
  printf "\t service account created\n"
  kubectl -n $ns apply -f - <<EOF
    apiVersion: v1
    kind: Secret
    metadata:
      name: $ns
      annotations:
        kubernetes.io/service-account.name: $ns
    type: kubernetes.io/service-account-token
EOF
  printf "\t token secret created\n"

  # set proper RBAC settings
  printf "TODO: set proper RBAC settings"

  # that's all
  printf "done\n"

done
