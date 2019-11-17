#!/bin/bash

docker run -d -p 8080:8080 -p 8081:8081 -p 3000:3000 -v ~/coder-projects:/home/coder/project -v ~/techrank-ide-3rd-party-extensions:/home/coder/extensions  techrank/code-server:$1 $2 $3

