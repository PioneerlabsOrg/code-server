#!/bin/bash

aws configure set default.region eu-west-1
aws configure set default.output json
aws configure set aws_access_key_id $1
aws configure set aws_secret_access_key $2

aws sts get-caller-identity

aws eks --region eu-west-1 update-kubeconfig --name techrank-me-v2

jx ns jx 

#openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout key.pem -out /home/coder/cert.pem -days 365

code-server --host 0.0.0.0 --port 8080
