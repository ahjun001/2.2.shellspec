#!/usr/bin/env bash

set -euo pipefail

confirm() {
    echo $'confirm : Entering'
    read -rsn 1 -p $'Press "n" to return\n'
    [[ $REPLY == "n" ]] && {
        touch /tmp/empty_dirs.txt
        echo $'Removing should be performed outside this script. Exiting ...\n'
        dolphin --new /tmp/empty_dirs.txt
        return 1
    }
    echo $'confirm : Have not returned yet'
}
