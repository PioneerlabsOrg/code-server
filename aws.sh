#!/bin/bash

aws configure set default.region eu-west-1
aws configure set default.output json
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2

aws sts get-caller-identity

aws eks --region eu-west-1 update-kubeconfig --name techrank-me-v2

jx ns jx 

rm -Rf /home/coder/.local/share/code-server/extensions

ln -s /home/coder/project/techrank-ide-3rd-party-extensions /home/coder/.local/share/code-server/extensions

code-server --host 0.0.0.0
