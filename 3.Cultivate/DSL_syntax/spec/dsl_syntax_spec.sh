#!/usr/bin/env bash
# dsl_syntax_spec.sh
set -euo pipefail
eval "$(shellspec - -c) exit 1"

Describe 'sample'
  Describe 'bc command'
    add() { echo "$1 + $2" | bc; }

    It 'performs addition'
      When call add 2 3
      The output should eq 5
    End
  End

  Describe 'implemented by shell function'
    Include ./mylib.sh # add() function defined

    It 'performs addition'
      When call add 2 3
      The output should eq 5
    End
  End
End