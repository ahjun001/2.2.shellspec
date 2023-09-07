#!/usr/bin/env bash
# spec/xclip_io1_spec.sh

eval "$(shellspec - -c) exit 1"

It '1 WRITES TO XCLIP 2'
When call bash -c "xclip <<< $'c\na\nb' && xclip -o && pkill -f xclip "
The line 1 of output should equal 'c'
The error should eq ''
The status should be success
End

It '2 WRITES TO XCLIP 2'
When call bash -c " sort -r <<<$'b\nc\na' | xclip ; xclip -o; pkill -f xclip "
The line 1 of output should equal 'c'
The error should eq ''
The status should be success
End
