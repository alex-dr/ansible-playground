#!/bin/bash

ansible-playbook \
    -i inventory/localhost \
    stupid-extra-vars.yml \
    -e true_var=true \
    -e "false_var=false" \
    -e string_var="foo" \
    -e '{ "int_var": 1 }'

ansible-playbook \
    -i inventory/localhost \
    stupid-extra-vars.yml \
    -e '{"true_var": true, "false_var": false}' \
    -e "string_var=foo" \
    -e "int_var=1"
