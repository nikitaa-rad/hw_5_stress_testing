#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a concurrency value."
    exit 1
fi

concurrency=$1
url="http://localhost:8080/timestamp"

siege -c $concurrency -t1m $url
