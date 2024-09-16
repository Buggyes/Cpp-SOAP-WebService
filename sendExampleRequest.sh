#! bin/bash

SCRIPT_DIR=$(dirname "$0")

cd "$SCRIPT_DIR" || exit

curl -v -X POST http://chatisthisfake:8080 -H "Content-Type: text/xml" -d @request.xml
