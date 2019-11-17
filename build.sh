#!/bin/bash


docker build --build-arg vscodeVersion=$1 -t techrank/code-server:$2 .
