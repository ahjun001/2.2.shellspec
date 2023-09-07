#!/usr/bin/env bash
# xclip_io2_spec.sh

eval "$(shellspec - -c) exit 1"

BeforeEach " sort -r <<<$'b\nc\na' | xclip"

Example "1 XCLIP DOES NOT FAIL IF LINE 1 == 'c' "
When call bash -c "xclip; pkill xclip"
The line 1 of output should equal 'c'
The error should eq ''
The status should be success
End

Example "2 XCLIP DOES NOT FAIL IF LINE 1 == 'c' "
When call bash -c xclip && pkill xclip
The line 1 of output should equal 'c'
The error should eq ''
The status should be success
End
