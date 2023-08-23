#!/usr/bin/env bash

set -euo pipefail
eval "$(shellspec - -c) exit 1"

Describe 'Script'
    It 'is sourced by Shellspec'
    When run ./script.sh
    The output should include 'Sourced by ShellSpec'
    End
    
End