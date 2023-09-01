#!/usr/bin/env bash
# ,shellspec_format_spec.sh

eval "$(shellspec - -c) exit 1"

Example 'SIMPLE INPUT FROM /TMP/file'
When call bash -c "cat /tmp/my_text.txt | xclip -selection clipboard | ./,shellspec_format.sh | xclip -selection clipboard -o"
The line 1 of output should equal '#!/usr/bin/env bash'
The error should eq ''
The status should be success
End
