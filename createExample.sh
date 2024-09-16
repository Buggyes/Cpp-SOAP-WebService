#! bin/bash

wsdl2h -o "./calc.h" http://www.genivia.com/calc.wsdl
soapcpp2 -j -SL "./calc.h"
