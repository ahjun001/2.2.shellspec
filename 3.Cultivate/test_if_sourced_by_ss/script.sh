#!/usr/bin/env bash

set -euo pipefail

PGRP=$(pgrep -af "$0" | cut -d ' ' -f 3 | uniq)
RPTH=$(realpath "$0")

echo PGRP = "$PGRP"
echo RPTH = "$RPTH"

if [ "$PGRP" == "$RPTH" ]; then
    echo "Not sourced by ShellSpec"
else
    echo "Sourced by ShellSpec"
fi
