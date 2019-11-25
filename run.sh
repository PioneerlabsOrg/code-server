#!/bin/bash

docker run --name techrankide -d -p 8080:8080 -p 8081:8081  -v ~/coder-projects:/home/coder/project -v ~/techrank-ide-3rd-party-extensions:/home/coder/extensions  techrank/code-server:$1 $2 $3

