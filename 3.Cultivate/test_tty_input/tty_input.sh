#!/usr/bin/env bash

# set -euo pipefail

confirm() {
    echo $'confirm : Entering'
    read -rsn 1 -p $'Press "n" to return\n' REPLY
    [[ $REPLY == "n" ]] && return
    echo $'confirm : Have not returned yet'
}

confirm

echo 'End'
