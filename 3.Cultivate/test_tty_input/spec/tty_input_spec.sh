#!/usr/bin/env bash

set -euo pipefail

eval "$(shellspec - -c) exit 1"

Describe 'cnf()'
    It 'prints "confirm n"'
        Data 'n'
        When run source ./tty_input.sh
        The output should include 'Entering'
        The line 1 of stdout should eq "confirm : Entering"
        The line 2 of stdout should eq "End"
        The stderr should eq ""
        The status should be success
    End

    It 'prints "confirm y"'
        Data 'y'
        When run source ./tty_input.sh
        The output should include 'Entering'
        The line 1 of stdout should eq "confirm : Entering"
        The line 2 of stdout should eq "confirm : Have not returned yet"
        The line 3 of stdout should eq "End"
        The stderr should eq ""
        The status should be success
    End
End
