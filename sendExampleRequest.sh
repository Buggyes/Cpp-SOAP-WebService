#! bin/bash
#this script doesn't work for some reason
#todo: fix the script so I don't have to copy and paste the curl command anymore

SCRIPT_DIR=$(dirname "$0")

cd "$SCRIPT_DIR" || exit

curl -v -X POST http://localhost:8080 -H "Content-Type: text/xml" -d @"./calc.add.req.xml"
