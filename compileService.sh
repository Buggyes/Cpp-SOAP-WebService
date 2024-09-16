#! /bin/bash

SCRIPT_DIR=$(dirname "$0")

cd "$SCRIPT_DIR" || exit

c++ -o calcserver "$SCRIPT_DIR/calcService.cpp" "$SCRIPT_DIR/soapC.cpp" "$SCRIPT_DIR/soapcalcService.cpp" "$SCRIPT_DIR/gsoap-2.8/gsoap/stdsoap2.cpp"
"$SCRIPT_DIR/calcserver" < "$SCRIPT_DIR/calc.add.req.xml"