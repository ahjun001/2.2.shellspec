#!/usr/bin/env bash
# wip_spec.sh

eval "$(shellspec - -c) exit 1"

Before 'xclip -i ./my_text.sh'
# Before "xclip <<<'#!/usr/bin/env bash'"

Example 'SIMPLE INPUT FROM my_text.sh'
When call bash -c './,shellspec_format.sh; xclip -o; pkill -f xclip'
The line 1 of output should equal '#!/usr/bin/env bash'
The error should eq ''
The status should be success
End
