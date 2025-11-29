#!/bin/bash

validate_arg_count() {
    if [ $# -ne 1 ]; then
        echo "Error: not one parameter"
        exit 1
    fi
}

validate_arg_is_number() {
    if [[ $1 =~ ^[0-9]+$ ]]; then
        echo "Error: parameter is a number"
        exit 1
    fi
}
