#!/bin/bash

aws configure set default.region eu-west-1
aws configure set default.output json
aws configure set aws_access_key_id
aws configure set aws_secret_access_key

aws sts get-caller-identity

aws eks --region eu-west-1 update-kubeconfig --name techrank-me-v2

jx ns jx 

code-server --host 0.0.0.0